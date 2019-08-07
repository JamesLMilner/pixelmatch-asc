export const Uint8Array_ID = idof<Uint8Array>();

export function pixelmatch(
	// For simplicity and due to lack of union types we just handle Uint8Array
	img1: Uint8Array,
	img2: Uint8Array,
	output: Uint8Array,
	width: i32,
	height: i32,

	// Can't use interfaces to make an options object here: https://docs.assemblyscript.org/basics/limitations#oop
	threshold: f64,   // matching threshold (0 to 1); smaller is more sensitive
	includeAA: bool,  // whether to skip anti-aliasing detection
	alpha: f64,       // opacity of original image in diff ouput
	aaR: f64,         // r color of anti-aliased pixels in diff output
	aaG: f64,         // g color of anti-aliased pixels in diff output
	aaB: f64,         // b color of anti-aliased pixels in diff output
	diffR: f64,       // r color of different pixels in diff output
	diffG: f64,       // g color of different pixels in diff output
	diffB: f64        // b color of different pixels in diff output
): i32 {

	// No Errors: https://docs.assemblyscript.org/basics/limitations#exceptions

	// Image sizes do not match
	if (img1.length !== img2.length || (output !== null && output.length !== img1.length)) {
		return -1;
	}

	// Image data size does not match width/height.
	if (img1.length !== width * height * 4) {
		return -2;
	}

  let img1Ptr = img1.dataStart;
  let img2Ptr = img2.dataStart;
  let outputPtr = output.dataStart;

	threshold = isNaN(threshold) ? 0.1 : threshold;
	includeAA = includeAA || false;
	alpha     = isNaN(alpha) ? 0.1 : alpha;

	// check if images are identical
	let len = width * height * 4;
  let identical = memory.compare(img1Ptr, img2Ptr, len) === 0;

	// fast path if identical
	if (identical) {
		if (output) {
			for (let i = 0; i < len; i += 4) {
				drawGrayPixel(img1Ptr, i, alpha, outputPtr);
			}
		}
		return 0;
	}

	// maximum acceptable square distance between two colors;
	// 35215 is the maximum possible value for the YIQ difference metric
	let maxDelta = 35215.0 * threshold * threshold;
	let diff = 0;

	aaR = isNaN(aaR) ? 255.0 : aaR;
	aaG = isNaN(aaG) ? 255.0 : aaG;
	aaB = isNaN(aaB) ?   0.0 : aaB;

	diffR = isNaN(diffR) ? 255.0 : diffR;
	diffG = isNaN(diffG) ?   0.0 : diffG;
	diffB = isNaN(diffB) ? 255.0 : diffB;

	// compare each pixel of one image against the other one
	for (let y = 0; y < height; y++) {
    let stride = y * width << 2;
		for (let x = 0; x < width; x++) {

			let pos = stride + (x << 2);

			// squared YUV distance between colors at this pixel position
			let delta = colorDelta(img1Ptr, img2Ptr, pos, pos);

			// the color difference is above the threshold
			if (delta > maxDelta) {
				// check it's a real rendering difference or just anti-aliasing
				if (!includeAA && (
					antialiased(img1Ptr, x, y, width, height, img2Ptr) ||
					antialiased(img2Ptr, x, y, width, height, img1Ptr)
				)) {
					// // one of the pixels is anti-aliasing; draw as yellow and do not count as difference
					if (output) {
						drawPixel(outputPtr, pos, aaR, aaG, aaB);
					}
				} else {
					// found substantial difference not caused by anti-aliasing; draw it as red
					if (output) {
						drawPixel(outputPtr, pos, diffR, diffG, diffB);
					}
					++diff;
				}
			} else if (output) {
				// pixels are similar; draw background as grayscale image blended with white
				drawGrayPixel(img1Ptr, pos, alpha, outputPtr);
			}
		}
	}

	// // return the number of different pixels
	return diff;
}

// // check if a pixel is likely a part of anti-aliasing;
// // based on "Anti-aliased Pixel and Intensity Slope Detector" paper by V. Vysniauskas, 2009
export function antialiased(imgPtr: usize, x1: i32, y1: i32, width: i32, height: i32, img2Ptr: usize): bool {
	let x0 = max(x1 - 1, 0);
	let y0 = max(y1 - 1, 0);
	let x2 = min(x1 + 1, width - 1);
	let y2 = min(y1 + 1, height - 1);
	let pos = (y1 * width + x1) * 4;
	let zeroes = i32(x1 === x0) | i32(x1 === x2) | i32(y1 === y0) | i32(y1 === y2);

	let min = 0.0;
	let max = 0.0;

	let minX = -1;
	let minY = -1;
	let maxX = -1;
	let maxY = -1;

	// go through 8 adjacent pixels
	for (let x = x0; x <= x2; x++) {
		for (let y = y0; y <= y2; y++) {
			if (i32(x === x1) & i32(y === y1)) {
				continue;
			}

			// brightness delta between the center pixel and adjacent one
			let delta = colorDelta(imgPtr, imgPtr, pos, (y * width + x) * 4, true);

			// count the number of equal, darker and brighter adjacent pixels
			if (delta === 0) {
				++zeroes;
				// if found more than 2 equal siblings, it's definitely not anti-aliasing
				if (zeroes > 2) {
					return false;
				}

			// remember the darkest pixel
			} else if (delta < min) {
				min = delta;
				minX = x;
				minY = y;

			// remember the brightest pixel
			} else if (delta > max) {
				max = delta;
				maxX = x;
				maxY = y;
			}
		}
	}

	// if there are no both darker and brighter pixels among siblings, it's not anti-aliasing
	if (i32(min === 0) | i32(max === 0)) {
		return false;
	}

	// if either the darkest or the brightest pixel has 3+ equal siblings in both images
	// (definitely not anti-aliased), this pixel is anti-aliased
	return (
    (hasManySiblings(imgPtr, minX, minY, width, height) && hasManySiblings(img2Ptr, minX, minY, width, height)) ||
    (hasManySiblings(imgPtr, maxX, maxY, width, height) && hasManySiblings(img2Ptr, maxX, maxY, width, height))
  );
}

// // check if a pixel has 3+ adjacent pixels of the same color.
export function hasManySiblings(imgPtr: usize, x1: i32, y1: i32, width: i32, height: i32): bool {
	let x0 = max(x1 - 1, 0);
	let y0 = max(y1 - 1, 0);
	let x2 = min(x1 + 1, width - 1);
	let y2 = min(y1 + 1, height - 1);
	let pos = (y1 * width + x1) * 4;
	let zeroes = i32(x1 === x0) | i32(x1 === x2) | i32(y1 === y0) | i32(y1 === y2);

	// go through 8 adjacent pixels
  for (let y = y0; y <= y2; y++) {
    let stride = y * width << 2;
	  for (let x = x0; x <= x2; x++) {
			if (i32(x === x1) & i32(y === y1)) continue;
			let pos2 = stride + (x << 2);
      zeroes += i32(load<u32>(imgPtr + pos) == load<u32>(imgPtr + pos2));
			if (zeroes > 2) return true;
		}
	}

	return false;
}

// // calculate color difference according to the paper "Measuring perceived color difference
// // using YIQ NTSC transmission color space in mobile applications" by Y. Kotsarenko and F. Ramos

export function colorDelta(img1Ptr: usize, img2Ptr: usize, k: i32, m: i32, yOnly: bool = false): f64 {
  let rgba1 = load<u32>(img1Ptr + k);
  let rgba2 = load<u32>(img2Ptr + m);

  let r1 = ((rgba1 >>  0) & 0xFF) as f64;
  let g1 = ((rgba1 >>  8) & 0xFF) as f64;
  let b1 = ((rgba1 >> 16) & 0xFF) as f64;
  let a1 = ((rgba1 >> 24)       ) as f64;

  let r2 = ((rgba2 >>  0) & 0xFF) as f64;
  let g2 = ((rgba2 >>  8) & 0xFF) as f64;
  let b2 = ((rgba2 >> 16) & 0xFF) as f64;
  let a2 = ((rgba2 >> 24)       ) as f64;

	if (i32(a1 === a2) & i32(r1 === r2) & i32(g1 === g2) & i32(b1 === b2)) {
		return 0;
	}

	if (a1 < 255.0) {
		a1 *= 1.0 / 255;
		r1 = blend(r1, a1);
		g1 = blend(g1, a1);
		b1 = blend(b1, a1);
	}

	if (a2 < 255.0) {
		a2 *= 1.0 / 255;
		r2 = blend(r2, a2);
		g2 = blend(g2, a2);
		b2 = blend(b2, a2);
	}

	let y = rgb2y(r1, g1, b1) - rgb2y(r2, g2, b2);

	if (yOnly) {
		return y; // brightness difference only
	}

	let i = rgb2i(r1, g1, b1) - rgb2i(r2, g2, b2);
	let q = rgb2q(r1, g1, b1) - rgb2q(r2, g2, b2);

	return 0.5053 * y * y + 0.299 * i * i + 0.1957 * q * q;
}

@inline
export function rgb2y(r: f64, g: f64, b: f64): f64 {
	return r * 0.29889531 + g * 0.58662247 + b * 0.11448223;
}

@inline
export function rgb2i(r: f64, g: f64, b: f64): f64 {
	return r * 0.59597799 - g * 0.27417610 - b * 0.32180189;
}

@inline
export function rgb2q(r: f64, g: f64, b: f64): f64 {
	return r * 0.21147017 - g * 0.52261711 + b * 0.31114694;
}

// // blend semi-transparent color with white
@inline
export function blend(c: f64, a: f64): f64 {
	return 255 + (c - 255) * a;
}

@inline
export function drawPixel(outputPtr: usize, pos: i32, r: f64, g: f64, b: f64): void {
  // store<u32>(outputPtr + pos, (r as u32) | ((g as u32) << 8) | ((g as u32) << 16) | ((255 as u32) << 24));
  outputPtr += pos;
  store<u8>(outputPtr, r as u8, 0);
  store<u8>(outputPtr, g as u8, 1);
  store<u8>(outputPtr, b as u8, 2);
  store<u8>(outputPtr, 255,     3);
}

@inline
export function drawGrayPixel(imgPtr: usize, i: i32, alpha: f64, outputPtr: usize): void {
  let rgba = load<u32>(imgPtr + i);

  let r = (rgba >> 0) & 0xFF;
  let g = (rgba >> 8) & 0xFF;
  let b = (rgba >>16) & 0xFF;
  let a = rgba >> 24;

	let c1 = rgb2y(r, g, b);
  let c2 = a * alpha * (1.0 / 255.0);

	let val = blend(c1, c2);
	drawPixel(outputPtr, i, val, val, val);
}
