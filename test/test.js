'use strict';

const PNG = require('pngjs').PNG;
const fs = require('fs');
const test = require('tape').test;
const path = require('path');
const loader = require("assemblyscript/lib/loader");

const buf = fs.readFileSync('./build/untouched.wasm');
const wasm = new WebAssembly.Module(new Uint8Array(buf));
const imports = {
  env: {
    abort(err) { console.error(err) }
  }
};

const wasmModule = loader.instantiate(wasm, imports);

const {
  __allocArray,
  __getArrayView,
  __retain,
  __release,
  Uint8Array_ID,
  pixelmatch,
  blend,
  rgb2y,
  rgb2q,
} = wasmModule;


test('throws error if image sizes do not match', (t) => {

    const png1 = new PNG({width: 1, height: 1});
    const png2 = new PNG({width: 2, height: 2})

    const ptr1 = __retain(__allocArray(Uint8Array_ID, png1.data));
    const ptr2 = __retain(__allocArray(Uint8Array_ID, png2.data));

    t.equal(pixelmatch(ptr1, ptr2, null, 2, 1), -1, 'Image sizes do not match');
    t.end();
});

test('throws error if image sizes do not match width and height', (t) => {
    const png1 = new PNG({width: 2, height: 2});
    const png2 = new PNG({width: 2, height: 2})

    const ptr1 = __retain(__allocArray(Uint8Array_ID, png1.data));
    const ptr2 = __retain(__allocArray(Uint8Array_ID, png2.data));

    t.equal(pixelmatch(ptr1, ptr2, null, 1, 1), -2, 'Image sizes do not match');
    t.end();
});

test('blends a pixel correctly', (t) => {

    t.ok(almostEqual(blend(140.96184316, 0.1), 243.596184316), 'float comparison should be equal');
    t.ok(almostEqual(blend(92.58668774, 0.1), 238.758668774), 'float comparison should be equal');
    t.ok(almostEqual(blend(255.00000255, 0.1), 255.000000255), 'float comparison should be equal');
    t.ok(almostEqual(blend(78.90447013, 0.1), 237.390447013), 'float comparison should be equal');

    t.end();
});

test('rgb2y', (t) => {

    t.ok(almostEqual(rgb2y(255, 24, 24), 93.04481685), 'float comparison should be equal');
    t.ok(almostEqual(rgb2y(255, 143, 143), 176.47627615), 'float comparison should be equal');
    t.ok(almostEqual(rgb2y(255, 138, 138), 172.97075265), 'float comparison should be equal');

    t.end();
});

test('rgb2q', (t) => {

    t.ok(almostEqual(rgb2q(255, 255, 255), 0), 'float comparison should be equal');
    t.ok(almostEqual(rgb2q(255, 240, 240), 3.1720525499999894), 'float comparison should be equal');
    t.ok(almostEqual(rgb2q(255, 237, 237), 3.806463060000013), 'float comparison should be equal');
    t.ok(almostEqual(rgb2q(255, 193, 193), 13.111150539999997), 'float comparison should be equal');

    t.end();
});

function diffTest(imgPath1, imgPath2, diffPath, options, expectedMismatch) {
    const name = `comparing ${imgPath1} to ${imgPath2}, ${JSON.stringify(options)}`;

    const defaultOptions = {
        threshold: 0.1,         // matching threshold (0 to 1); smaller is more sensitive
        includeAA: false,       // whether to skip anti-aliasing detection
        alpha: 0.1,             // opacity of original image in diff ouput
        aaColor: [255, 255, 0], // color of anti-aliased pixels in diff output
        diffColor: [255, 0, 0]  // color of different pixels in diff output
    };

    test(name, (t) => {

        options = {...defaultOptions, ...options};

        const img1 = readImage(imgPath1);
        const img2 = readImage(imgPath2);
        const {width, height} = img1;
        const diffPNG = new PNG({width, height});

        const ptr1    = __retain(__allocArray(Uint8Array_ID, img1.data));
        const ptr2    = __retain(__allocArray(Uint8Array_ID, img2.data));
        const diffPtr = __retain(__allocArray(Uint8Array_ID, diffPNG.data));

        const mismatch = pixelmatch(
            ptr1,
            ptr2,
            diffPtr,
            width,
            height,
            options.threshold,
            options.includeAA,
            options.alpha,
            options.aaColor && options.aaColor[0],
            options.aaColor && options.aaColor[1],
            options.aaColor && options.aaColor[2],
            options.diffColor && options.diffColor[0],
            options.diffColor && options.diffColor[1],
            options.diffColor && options.diffColor[2]
        );
        const mismatch2 = pixelmatch(ptr1, ptr2, null, width, height, options.threshold, options.includeAA, options.alpha, options.aaColor, options.diffColor);

        // Reassign data back to the diff PNG
        diffPNG.data = Buffer.from(__getArrayView(diffPtr));

        const expectedDiff = readImage(diffPath);

        writeImage(name, diffPNG);
        t.ok(diffPNG.data.equals(expectedDiff.data), 'diff image data should match');

        t.equal(mismatch, expectedMismatch, 'number of mismatched pixels should match');
        t.equal(mismatch, mismatch2, 'number of mismatched pixels without diff');

        __release(ptr1);
        __release(ptr2);
        __release(diffPtr);
        t.end();
    });
}

const options = {
    threshold: 0.05,
    alpha: 0.1
};

diffTest('1a', '1b', '1diff', options, 143);
diffTest('2a', '2b', '2diff', {
    threshold: 0.05,
    alpha: 0.5,
    aaColor: [0, 192, 0],
    diffColor: [255, 0, 255]
}, 12437);
diffTest('3a', '3b', '3diff', options, 212);
diffTest('4a', '4b', '4diff', options, 36049);
diffTest('5a', '5b', '5diff', options, 0);
diffTest('6a', '6b', '6diff', options, 51);
diffTest('6a', '6a', '6empty', {threshold: 0.0}, 0);


// UTILITY FUNCTIONS

function readImage(name) {
    return PNG.sync.read(fs.readFileSync(path.join(__dirname, `fixtures/${name}.png`)));
}

function writeImage(name, image) {
    const resultsDir = path.join(__dirname, 'results');
    if (!fs.existsSync(resultsDir)) fs.mkdirSync(resultsDir);
    fs.writeFileSync(path.join(resultsDir, `${name}.png`), PNG.sync.write(image));
}

function almostEqual(n1, n2, precision = 4) {
    return n1.toFixed(precision) === n2.toFixed(precision);
}
