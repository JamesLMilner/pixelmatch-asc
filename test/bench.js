

const PNG = require('pngjs').PNG;
const fs = require('fs');
const path = require('path');
const loader = require("assemblyscript/lib/loader");

const buf = fs.readFileSync('./build/optimized.wasm');
const wasm = new WebAssembly.Module(new Uint8Array(buf));
const wasmModule = loader.instantiate(wasm, { env: { abort: (err) => {
    console.error(err)
}}});

const {
    performance
} = require('perf_hooks');

let total = 0;

function diffBench(imgPath1, imgPath2, diffPath, options, expectedMismatch) {
    const name = `comparing ${imgPath1} to ${imgPath2}, ${JSON.stringify(options)}`;

    const defaultOptions = {
        threshold: 0.1,         // matching threshold (0 to 1); smaller is more sensitive
        includeAA: false,       // whether to skip anti-aliasing detection
        alpha: 0.1,             // opacity of original image in diff ouput
        aaColor: [255, 255, 0], // color of anti-aliased pixels in diff output
        diffColor: [255, 0, 0]  // color of different pixels in diff output
    };

    options = {...defaultOptions, ...options};

    const img1 = readImage(imgPath1);
    const img2 = readImage(imgPath2);
    const {width, height} = img1;

    const diffPNG = new PNG({width, height});

    const start = performance.now();

    const ptr1 = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Uint8Array_ID, img1.data));
    const ptr2 = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Uint8Array_ID, img2.data));
    const diffPtr = wasmModule.__retain(wasmModule.__allocArray(wasmModule.Uint8Array_ID, diffPNG.data));

    const mismatch = wasmModule.pixelmatch(
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
    const mismatch2 = wasmModule.pixelmatch(
        ptr1,
        ptr2,
        null,
        width,
        height,
        options.threshold,
        options.includeAA,
        options.alpha,
        options.aaColor,
        options.diffColor
    );
    const end = performance.now();
    total += end - start;

    diffPNG.data = Buffer.from(new Uint8Array(wasmModule.__getArray(diffPtr)));
    console.log("\n", imgPath1, imgPath2, end - start, "ms \n");

    wasmModule.__release(ptr1);
    wasmModule.__release(ptr2);
    wasmModule.__release(diffPtr);
}

const options = {
    threshold: 0.05,
    alpha: 0.1
};

diffBench('1a', '1b', '1diff', options, 143);
diffBench('2a', '2b', '2diff', {
    threshold: 0.05,
    alpha: 0.5,
    aaColor: [0, 192, 0],
    diffColor: [255, 0, 255]
}, 12437);
diffBench('3a', '3b', '3diff', options, 212);
diffBench('4a', '4b', '4diff', options, 36049);
diffBench('5a', '5b', '5diff', options, 0);
diffBench('6a', '6b', '6diff', options, 51);
diffBench('6a', '6a', '6empty', {threshold: 0.0}, 0);
console.log("Total Running Time:", total);

function readImage(name) {
    return PNG.sync.read(fs.readFileSync(path.join(__dirname, `fixtures/${name}.png`)));
}
