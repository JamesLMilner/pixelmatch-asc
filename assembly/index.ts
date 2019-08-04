// import "allocator/tlsf";
export { memory };

export const Int8Array_ID = idof<Int8Array>();

// export function test(arr: Int8Array): i32 {
// 	return arr[0]
// }

// export function pixelmatch(
// 	// No Union Types so we have to have just Uint8Array :( - https://github.com/AssemblyScript/assemblyscript/issues/555
// 	img1: Int8Array,
// 	img2: Int8Array,
// 	output: Int8Array,
// 	width: i32,
// 	height: i32,

// 	// // Can't use interfaces to make an options object here: https://docs.assemblyscript.org/basics/limitations#oop
// 	threshold: f32,     	// matching threshold (0 to 1); smaller is more sensitive
// 	includeAA: bool,    	// whether to skip anti-aliasing detection
// 	alpha: f32, 			// opacity of original image in diff ouput
// 	aaColor: Int8Array,	// color of anti-aliased pixels in diff output
// 	diffColor: Int8Array	// color of different pixels in diff output
// ): i32 {

// 	// No Errors: https://docs.assemblyscript.org/basics/limitations#exceptions

// 	// if (!isPixelData(img1) || !isPixelData(img2) || !isPixelData(output)) {
// 	// 	return -1; // throw new Error('Image data: Uint8Array, Uint8ClampedArray or Buffer expected.');
// 	// }

// 	// if (img1.length !== img2.length || (output !== null && output.length !== img1.length)) {
// 	// 	return -2; // throw new Error('Image sizes do not match.');
// 	// }

// 	// if (img1.length !== width * height * 4) {
// 	// 	return -3; // throw new Error('Image data size does not match width/height.');
// 	// }

// 	threshold = threshold || 0.1;
// 	includeAA = includeAA || false;
// 	alpha = alpha || 0.1; 		// opacity of original image in diff ouput

// 	// // check if images are identical
// 	const len: i32 = width * height;
// 	let identical: bool = true;

// 	for (let i = 0; i < len; i++) {
// 		// return a32[i];
// 		if (img1[i] !== img2[i]) {
// 			identical = false;
// 			break;
// 		}
// 	}

// 	if (identical) { // fast path if identical
// 		if (output) {
// 			for (let i = 0; i < len; i++) {
// 				const r: i8 = img1[i + 0];
// 				const g: i8 = img1[i + 1];
// 				const b: i8 = img1[i + 2];

// 				const c1: i8 = rgb2y(r, g, b) as i8;
// 				const c2: i8 = (((0.1 as f32) * ((img1[i + 3] / 255) as f32)) as i8);

// 				const val: i8 = blend(c1, c2);
// 				drawPixel(output, i, val, val, val);
// 				// drawGrayPixel(a32, 4 * i, alpha, output);
// 			}
// 		}
// 		return 0;
// 	}

// 	// maximum acceptable square distance between two colors;
// 	// 35215 is the maximum possible value for the YIQ difference metric
// 	const maxDelta: f32 = 35215 * threshold * threshold;

// 	let diff: i32 = 0;
// 	const aaR: i8 = 255 as i8; // aaColor[0] || 255 as i8;
// 	const aaG: i8 = 255 as i8; // aaColor[1] || 255 as i8;
// 	const aaB: i8 = 0 as i8; // aaColor[2] || 0 as i8;

// 	const diffR: i8 = 255 as i8; // diffColor[0] || 255 as i8;
// 	const diffG: i8 = 0 as i8; // diffColor[1] || 0 as i8;
// 	const diffB: i8 = 0 as i8; // diffColor[2] || 0 as i8;

// 	// compare each pixel of one image against the other one
// 	for (let y = 0; y < height; y++) {
// 		for (let x = 0; x < width; x++) {

// 			const pos = (y * width + x) * 4;

// 			// squared YUV distance between colors at this pixel position
// 			const delta = colorDelta(img1, img2, pos, pos, false);

// 			// the color difference is above the threshold
// 			if (delta > maxDelta) {
// 				// check it's a real rendering difference or just anti-aliasing
// 				if (
// 					!includeAA && 
// 					(
// 						antialiased(img1, x, y, width, height, img2) ||
// 						antialiased(img2, x, y, width, height, img1)
// 					)
// 				) {
// 					// one of the pixels is anti-aliasing; draw as yellow and do not count as difference
// 					if (output) {
// 						drawPixel(output, pos, aaR, aaG, aaB);
// 					}
// 				} else {
// 					// found substantial difference not caused by anti-aliasing; draw it as red
// 					if (output) {
// 						drawPixel(output, pos, diffR, diffG, diffB);
// 					}
// 					diff++;
// 				}
// 			} else if (output) {
// 				// pixels are similar; draw background as grayscale image blended with white
// 				drawGrayPixel(img1, pos, alpha, output);
// 			}
// 		}
// 	}

// 	// return the number of different pixels
// 	return diff;
// }

// // function isPixelData(arr: Uint8Array): bool {
// // 	// work around instanceof Uint8Array not working properly in some Jest environments
// // 	return arr instanceof Uint8Array; // ArrayBuffer.isView(arr); // && arr.constructor.BYTES_PER_ELEMENT === 1;
// // }

// // check if a pixel is likely a part of anti-aliasing;
// // based on "Anti-aliased Pixel and Intensity Slope Detector" paper by V. Vysniauskas, 2009
// function antialiased(img: Int8Array, x1: i32, y1: i32, width: i32, height: i32, img2: Int8Array): bool {
// 	const x0: i32 = Math.max(x1 - 1, 0) as i32;
// 	const y0: i32 = Math.max(y1 - 1, 0) as i32;
// 	const x2: i32 = Math.min(x1 + 1, width - 1) as i32;
// 	const y2: i32 = Math.min(y1 + 1, height - 1) as i32;
// 	const pos: i32 = (y1 * width + x1) * 4 as i32;
// 	let zeroes = x1 === x0 || x1 === x2 || y1 === y0 || y1 === y2 ? 1 : 0;

// 	let min: f32 = 0.0;
// 	let max: f32 = 0.0;

// 	let minX: i32 = -1;
// 	let minY: i32 = -1;
// 	let maxX: i32 = -1;
// 	let maxY: i32 = -1;

// 	// go through 8 adjacent pixels
// 	for (let x = x0; x <= x2; x++) {
// 		for (let y = y0; y <= y2; y++) {
// 			if (x === x1 && y === y1) {
// 				continue;
// 			}

// 			// brightness delta between the center pixel and adjacent one
// 			const delta: f32 = colorDelta(img, img, pos, (((y * width + x) * 4) as i32), true);

// 			// count the number of equal, darker and brighter adjacent pixels
// 			if (delta === 0) {
// 				zeroes++;
// 				// if found more than 2 equal siblings, it's definitely not anti-aliasing
// 				if (zeroes > 2) {
// 					return false;
// 				}

// 			// remember the darkest pixel
// 			} else if (delta  < min) {
// 				min = delta;
// 				minX = x;
// 				minY = y;

// 			// remember the brightest pixel
// 			} else if (delta  > max) {
// 				max = delta;
// 				maxX = x;
// 				maxY = y;
// 			}
// 		}
// 	}

// 	// if there are no both darker and brighter pixels among siblings, it's not anti-aliasing
// 	if (min === 0 || max === 0) {
// 		return false;
// 	}

// 	// if either the darkest or the brightest pixel has 3+ equal siblings in both images
// 	// (definitely not anti-aliased), this pixel is anti-aliased
// 	return (
// 		hasManySiblings(img, minX, minY, width, height) &&
// 		hasManySiblings(img2, minX, minY, width, height)
// 	) || (
// 		hasManySiblings(img, maxX, maxY, width, height) && hasManySiblings(img2, maxX, maxY, width, height)
// 	);
// }

// // check if a pixel has 3+ adjacent pixels of the same color.
// function hasManySiblings(img: Int8Array, x1: i32, y1: i32, width: i32, height: i32): bool {
// 	const x0 = Math.max(x1 - 1, 0);
// 	const y0 = Math.max(y1 - 1, 0);
// 	const x2 = Math.min(x1 + 1, width - 1);
// 	const y2 = Math.min(y1 + 1, height - 1);
// 	const pos = (y1 * width + x1) * 4;
// 	let zeroes = x1 === x0 || x1 === x2 || y1 === y0 || y1 === y2 ? 1 : 0;

// 	// go through 8 adjacent pixels
// 	for (let x = x0; x <= x2; x++) {
// 		for (let y = y0; y <= y2; y++) {
// 			if (x === x1 && y === y1) continue;

// 			const pos2: i32 = ((y * width + x) * 4) as i32
// 			if (img[pos] === img[pos2] &&
// 					img[pos + 1] === img[pos2 + 1] &&
// 					img[pos + 2] === img[pos2 + 2] &&
// 					img[pos + 3] === img[pos2 + 3]) zeroes++;

// 			if (zeroes > 2) return true;
// 		}
// 	}

// 	return false;
// }

// // calculate color difference according to the paper "Measuring perceived color difference
// // using YIQ NTSC transmission color space in mobile applications" by Y. Kotsarenko and F. Ramos

// function colorDelta(img1: Int8Array, img2: Int8Array, k: i32, m: i32, yOnly: bool = false): f32 {
// 	let r1: i8 = img1[k + 0];
// 	let g1: i8 = img1[k + 1];
// 	let b1: i8 = img1[k + 2];
// 	let a1: i8 = img1[k + 3];

// 	let r2: i8 = img2[m + 0];
// 	let g2: i8 = img2[m + 1];
// 	let b2: i8 = img2[m + 2];
// 	let a2: i8 = img2[m + 3];

// 	if (a1 === a2 && r1 === r2 && g1 === g2 && b1 === b2) {
// 		return 0;
// 	}

// 	if (a1 < (255 as i8)) {
// 		a1 /= (255 as i8);
// 		r1 = blend(r1, a1);
// 		g1 = blend(g1, a1);
// 		b1 = blend(b1, a1);
// 	}

// 	if (a2 < (255 as i8)) {
// 		a2 /= (255 as i8);
// 		r2 = blend(r2, a2);
// 		g2 = blend(g2, a2);
// 		b2 = blend(b2, a2);
// 	}

// 	const y: f32 = rgb2y(r1, g1, b1) - rgb2y(r2, g2, b2);

// 	if (yOnly) {
// 		return y; // brightness difference only
// 	}

// 	const i: f32 = rgb2i(r1, g1, b1) - rgb2i(r2, g2, b2) ;
// 	const q: f32 = rgb2q(r1, g1 , b1) - rgb2q(r2, g2, b2);

// 	return 0.5053 * y * y + 0.299 * i * i + 0.1957 * q * q;
// }

export function rgb2y(r: f32, g: f32, b: f32): f32 { 
	return (r  * 0.29889531 as f32) + (g * 0.58662247 as f32) + (b * 0.11448223 as f32); 
}

export function rgb2i(r: f32, g: f32, b: f32): f32 { 
	return (r * 0.59597799 as f32) - (g * 0.27417610 as f32) - (b * 0.32180189 as f32);
}

export function rgb2q(r: f32, g: f32, b: f32): f32 { 
	return (r * 0.21147017) - (g * 0.52261711) + (b * 0.31114694);
}

// // blend semi-transparent color with white
export function blend(c: f32, a: f32): f32 {
	return (255 as f32) + (c - (255 as f32)) * a;
}

export function drawPixel(output: Uint8Array, pos: i32, r: f32, g: f32, b: f32): void {
	output[pos + 0] = r as u8;
	output[pos + 1] = g as u8;
	output[pos + 2] = b as u8;
	output[pos + 3] = 255 as u8;
}

export function drawGrayPixel(img: Uint8Array, i: i32, alpha: f32, output: Uint8Array): void {
	const r: f32 = img[i + 0] as f32;
	const g: f32 = img[i + 1] as f32;
	const b: f32 = img[i + 2] as f32;

	const c1: f32 = rgb2y(r, g, b);
	const c2: f32 = (alpha * (img[i + 3] as f32)) / (255 as f32)

	const val: f32 = blend(c1, c2);
	drawPixel(output, i, val, val, val);
}
