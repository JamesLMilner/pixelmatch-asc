const { lstatSync, readdirSync } = require('fs')
const { join } = require('path')
const pixelmatch = require('pixelmatch');
const {
    performance
} = require('perf_hooks');

const isDirectory = source => lstatSync(source).isDirectory()
const getDirectories = source =>
  readdirSync(source).map(name => join(source, name)).filter(isDirectory)

let directories = getDirectories('test/render-tests').map((getDirectories));
directories = [].concat.apply([], directories); 

const PNG = require('pngjs').PNG;
const fs = require('fs');
const loader = require("assemblyscript/lib/loader");

const buf = fs.readFileSync('./build/optimized.wasm');
const wasm = new WebAssembly.Module(new Uint8Array(buf));
loader.instantiate(wasm, { env: { abort: (err) => {
    console.error(err)
}}}).then((wasmModule) => {


    function diffASCBench(path, img1, img2) {

        const {width, height} = img1;

        

        const diffPNG = new PNG({width, height});
        const {
        __retain,
        __release,
        __allocArray,
        __getArrayView,
        Uint8Array_ID,
        pixelmatch
        } = wasmModule;

        // console.log(wasmModule);

        const start = performance.now();

        const ptr1 = __retain(__allocArray(Uint8Array_ID, img1.data));
        const ptr2 = __retain(__allocArray(Uint8Array_ID, img2.data));
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
        const mismatch2 = pixelmatch(
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
        const total = end - start;

        diffPNG.data = Buffer.from(__getArrayView(diffPtr));
        // console.log("\n ASC mismatches", mismatch, mismatch2,  "\n");

        // console.log("\n", path, end - start, "ms \n");

        __release(ptr1);
        __release(ptr2);
        __release(diffPtr);
        return total;
    }

    function diffJSBench(path, img1, img2) {

        const {width, height} = img1;

        const diffPNG = new PNG({width, height});

        const start = performance.now();

        const mismatch = pixelmatch(
            img1.data,
            img2.data,
            diffPNG.data,
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
        const mismatch2 = pixelmatch(
            img1.data,
            img2.data,
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
        const total = end - start;
        // console.log("\n JS mismatches", mismatch, mismatch2,  "\n");

        // console.log("\n", path, end - start, "ms \n");

        return total;
    }

    const options = {
        threshold: 0.05,
        alpha: 0.1
    };

    const runAllASCBench = () => {
        console.log("Starting ASC benchmark...\n")
        let total = 0;
        directories.forEach((d) => {
            try {
                total += diffASCBench(d, actualImage(d), diffImage(d));
            } catch (e) {}
        })
        console.log("ASC Total", total,  "\n");
    }

    const runAllJSBench = () => {
        console.log("Starting JS benchmark...\n");
        let total = 0;
        directories.forEach((d) => {
            try {
                total += diffJSBench(d, actualImage(d), diffImage(d));
            } catch (e) {}
        })

        console.log("JS Total:", total,  "\n");
    }


    function actualImage(path) {
        return PNG.sync.read(fs.readFileSync(join(path, `actual.png`)));
    }

    function diffImage(path) {
        return PNG.sync.read(fs.readFileSync(join(path, `diff.png`)));
    }

    runAllASCBench();
    runAllJSBench();

})

