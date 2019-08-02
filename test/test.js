'use strict';

const PNG = require('pngjs').PNG;
const fs = require('fs');
const test = require('tape').test;
const path = require('path');
const loader = require("assemblyscript/lib/loader");

const buf = fs.readFileSync('./build/untouched.wasm');
const wasmModule = loader.instantiate(new WebAssembly.Module(new Uint8Array(buf)), { env: { abort: () => {}}})

// const arr = new Int8Array([33]);
// const ptr1 = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Int8Array_ID, arr));
// console.log(wasmModule.test(ptr1));
// //console.log(wasmModule);

function toBuffer(ab) {
    var buf = Buffer.alloc(ab.byteLength);
    var view = new Uint8Array(ab);
    for (var i = 0; i < buf.length; ++i) {
        buf[i] = view[i];
    }
    return buf;
}

const options = {threshold: 0.05};

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
diffTest('6a', '6a', '6empty', {threshold: 0}, 0);

// test('throws error if image sizes do not match', (t) => {
//     t.throws(() => wasmModule.pixelmatch(new Uint8Array(8), new Uint8Array(9), null, 2, 1), 'Image sizes do not match');
//     t.end();
// });

// test('throws error if image sizes do not match width and height', (t) => {
//     t.throws(() => wasmModule.pixelmatch(new Uint8Array(9), new Uint8Array(9), null, 2, 1), 'Image data size does not match width/height');
//     t.end();
// });

// test('throws error if provided wrong image data format', (t) => {
//     const err = 'Image data: Uint8Array, Uint8ClampedArray or Buffer expected';
//     const arr = new Uint8Array(4 * 20 * 20);
//     const bad = new Array(arr.length).fill(0);
//     t.throws(() => wasmModule.pixelmatch(bad, arr, null, 20, 20), err);
//     t.throws(() => wasmModule.pixelmatch(arr, bad, null, 20, 20), err);
//     t.throws(() => wasmModule.pixelmatch(arr, arr, bad, 20, 20), err);
//     t.end();
// });

function diffTest(imgPath1, imgPath2, diffPath, options, expectedMismatch) {
    const name = `comparing ${imgPath1} to ${imgPath2}, ${JSON.stringify(options)}`;

    test(name, (t) => {
        const img1 = readImage(imgPath1);
        const img2 = readImage(imgPath2);
        const {width, height} = img1;
        const len = width * height;

        // console.log(img1.data, img2.data);
        const diffPNG = new PNG({width, height});

        // const diff = new PNG({width, height});
        const diffArr = new Int8Array(diffPNG.data, diffPNG.byteOffset, len);
        const img1Arr = new Int8Array(img1.data, img1.byteOffset, len);
        const img2Arr = new Int8Array(img2.data, img2.byteOffset, len);

        // console.log(diff);

        const ptr1 = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Int8Array_ID, img1Arr));
        const ptr2 = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Int8Array_ID, img2Arr));
        const diffPtr = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Int8Array_ID, diffArr));

        // const ptr1 = wasmModule.newArray(a32);
        // const ptr2 = wasmModule.newArray(b32);
        // const diffPtr = wasmModule.newArray(diff);
        // threshold: f32,     	// matching threshold (0 to 1); smaller is more sensitive
        // includeAA: bool,    	// whether to skip anti-aliasing detection
        // alpha: f32, 			// opacity of original image in diff ouput
        // aaColor: Int8Array,	// color of anti-aliased pixels in diff output
        // diffColor: Int8Array	// color of different pixels in diff output
        const mismatch = wasmModule.pixelmatch(ptr1, ptr2, diffPtr, width, height, options.threshold, options.includeAA, options.alpha, options.aaColor, options.diffColor);
        const mismatch2 = wasmModule.pixelmatch(ptr1, ptr2, null, width, height, options.threshold, options.includeAA, options.alpha, options.aaColor, options.diffColor);

        const resultDiff = new Int8Array(wasmModule.__getArray(diffPtr));

        // console.log(resultDiff);

        const expectedDiff = readImage(diffPath);
        // console.log(resultDiff instanceof Array);
        console.log(mismatch, mismatch2);

        t.ok(toBuffer(resultDiff.buffer).equals(expectedDiff.data), 'diff image');

        t.equal(mismatch, expectedMismatch, 'number of mismatched pixels');
        t.equal(mismatch, mismatch2, 'number of mismatched pixels without diff');

        wasmModule.__release(ptr1);
        wasmModule.__release(ptr2);
        t.end();
    });
}

function readImage(name) {
    return PNG.sync.read(fs.readFileSync(path.join(__dirname, `fixtures/${name}.png`)));
}
// function writeImage(name, image) {
//     fs.writeFileSync(path.join(__dirname, `fixtures/${name}.png`), PNG.sync.write(image));
// }
