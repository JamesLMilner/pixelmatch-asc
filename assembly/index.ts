export const Uint8Array_ID = idof<Uint8Array>();

export function pixelmatch(
	// For simplicity and due to lack of union types we just handle Uint8Array
	img1: Uint8Array,
	img2: Uint8Array,
	output: Uint8Array,
	width: i32,
	height: i32,

	// Can't use interfaces to make an options object here: https://docs.assemblyscript.org/basics/limitations#oop
	threshold: f32,     	// matching threshold (0 to 1); smaller is more sensitive
	includeAA: bool,    	// whether to skip anti-aliasing detection
	alpha: f32,				// opacity of original image in diff ouput
	aaR: f32, 				// r color of anti-aliased pixels in diff output
	aaG: f32,				// g color of anti-aliased pixels in diff output
	aaB: f32,				// b color of anti-aliased pixels in diff output
	diffR: f32,				// r color of different pixels in diff output
	diffG: f32,				// g color of different pixels in diff output
	diffB: f32				// b color of different pixels in diff output
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

	threshold = isNaN(threshold) ? 0.1 : threshold;
	includeAA = includeAA || false;
	alpha = isNaN(alpha) ? 0.1 : alpha;

	// check if images are identical
	let len = width * height;
	let identical = true;

	for (let i = 0; i < len; i++) {
		if (img1[i] !== img2[i]) {
			identical = false;
			break;
		}
	}

	// fast path if identical
	if (identical) {
		if (output) {
			for (let i = 0; i < len; i++) {
				drawGrayPixel(img1, i << 2, alpha, output);
			}
		}
		return 0;
	}

	// maximum acceptable square distance between two colors;
	// 35215 is the maximum possible value for the YIQ difference metric
	let maxDelta: f32 = 35215 * threshold * threshold;

	let diff = 0;
	aaR = isNaN(aaR) ? 255.0 : aaR;
	aaG = isNaN(aaG) ? 255.0 : aaG;
	aaB = isNaN(aaB) ?   0.0 : aaB;

	diffR = isNaN(diffR) ? 255.0 : diffR;
	diffG = isNaN(diffG) ?   0.0 : diffG;
	diffB = isNaN(diffB) ? 255.0 : diffB;

	// compare each pixel of one image against the other one
	for (let y = 0; y < height; y++) {
		for (let x = 0; x < width; x++) {

			let pos = (y * width + x) * 4;

			// squared YUV distance between colors at this pixel position
			let delta = colorDelta(img1, img2, pos, pos, false);

			// the color difference is above the threshold
			if (delta > maxDelta) {
				// check it's a real rendering difference or just anti-aliasing
				if (
					!includeAA &&
					(
						antialiased(img1, x, y, width, height, img2) ||
						antialiased(img2, x, y, width, height, img1)
					)
				) {
					// // one of the pixels is anti-aliasing; draw as yellow and do not count as difference
					if (output) {
						drawPixel(output, pos, aaR, aaG, aaB);
					}
				} else {
					// found substantial difference not caused by anti-aliasing; draw it as red
					if (output) {
						drawPixel(output, pos, diffR, diffG, diffB);
					}
					diff++;
				}
			} else if (output) {
				// pixels are similar; draw background as grayscale image blended with white
				drawGrayPixel(img1, pos, alpha, output);
			}
		}
	}

	// // return the number of different pixels
	return diff;
}

// // check if a pixel is likely a part of anti-aliasing;
// // based on "Anti-aliased Pixel and Intensity Slope Detector" paper by V. Vysniauskas, 2009
export function antialiased(img: Uint8Array, x1: i32, y1: i32, width: i32, height: i32, img2: Uint8Array): bool {
	let x0 = max(x1 - 1, 0);
	let y0 = max(y1 - 1, 0);
	let x2 = min(x1 + 1, width - 1);
	let y2 = min(y1 + 1, height - 1);
	let pos = (y1 * width + x1) * 4;
	let zeroes = i32(x1 === x0 || x1 === x2 || y1 === y0 || y1 === y2);

	let min: f32 = 0;
	let max: f32 = 0;

	let minX = -1;
	let minY = -1;
	let maxX = -1;
	let maxY = -1;

	// go through 8 adjacent pixels
	for (let x = x0; x <= x2; x++) {
		for (let y = y0; y <= y2; y++) {
			if (x === x1 && y === y1) {
				continue;
			}

			// brightness delta between the center pixel and adjacent one
			const delta = colorDelta(img, img, pos, (y * width + x) * 4, true);

			// count the number of equal, darker and brighter adjacent pixels
			if (delta === 0) {
				zeroes++;
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
	if (min === 0 || max === 0) {
		return false;
	}

	// if either the darkest or the brightest pixel has 3+ equal siblings in both images
	// (definitely not anti-aliased), this pixel is anti-aliased
	return (
    (hasManySiblings(img, minX, minY, width, height) && hasManySiblings(img2, minX, minY, width, height)) ||
    (hasManySiblings(img, maxX, maxY, width, height) && hasManySiblings(img2, maxX, maxY, width, height))
  );
}

// // check if a pixel has 3+ adjacent pixels of the same color.
export function hasManySiblings(img: Uint8Array, x1: i32, y1: i32, width: i32, height: i32): bool {
	let x0 = max(x1 - 1, 0);
	let y0 = max(y1 - 1, 0);
	let x2 = min(x1 + 1, width - 1);
	let y2 = min(y1 + 1, height - 1);
	let pos = (y1 * width + x1) * 4;
	let zeroes = i32(x1 === x0 || x1 === x2 || y1 === y0 || y1 === y2);

	// go through 8 adjacent pixels
	for (let x = x0; x <= x2; x++) {
		for (let y = y0; y <= y2; y++) {
			if (x === x1 && y === y1) continue;

			let pos2 = (y * width + x) * 4
			if (unchecked(img[pos + 0]) === unchecked(img[pos2 + 0]) &&
					unchecked(img[pos + 1]) === unchecked(img[pos2 + 1]) &&
					unchecked(img[pos + 2]) === unchecked(img[pos2 + 2]) &&
					unchecked(img[pos + 3]) === unchecked(img[pos2 + 3])) zeroes++;

			if (zeroes > 2) return true;
		}
	}

	return false;
}

// // calculate color difference according to the paper "Measuring perceived color difference
// // using YIQ NTSC transmission color space in mobile applications" by Y. Kotsarenko and F. Ramos

export function colorDelta(img1: Uint8Array, img2: Uint8Array, k: i32, m: i32, yOnly: bool = false): f32 {
	let r1 = unchecked(img1[k + 0]) as f32;
	let g1 = unchecked(img1[k + 1]) as f32;
	let b1 = unchecked(img1[k + 2]) as f32;
	let a1 = unchecked(img1[k + 3]) as f32;

	let r2 = unchecked(img2[m + 0]) as f32;
	let g2 = unchecked(img2[m + 1]) as f32;
	let b2 = unchecked(img2[m + 2]) as f32;
	let a2 = unchecked(img2[m + 3]) as f32;

	if (a1 === a2 && r1 === r2 && g1 === g2 && b1 === b2) {
		return 0;
	}

	if (a1 < (255 as f32)) {
		a1 *= (1.0 / 255 as f32);
		r1 = blend(r1, a1);
		g1 = blend(g1, a1);
		b1 = blend(b1, a1);
	}

	if (a2 < (255 as f32)) {
		a2 *= (1.0 / 255 as f32);
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
export function rgb2y(r: f32, g: f32, b: f32): f32 {
	return (r * 0.29889531 as f32) + (g * 0.58662247 as f32) + (b * 0.11448223 as f32);
}

@inline
export function rgb2i(r: f32, g: f32, b: f32): f32 {
	return (r * 0.59597799 as f32) - (g * 0.27417610 as f32) - (b * 0.32180189 as f32);
}

@inline
export function rgb2q(r: f32, g: f32, b: f32): f32 {
	return (r * 0.21147017 as f32) - (g * 0.52261711 as f32) + (b * 0.31114694 as f32);
}

// // blend semi-transparent color with white
@inline
export function blend(c: f32, a: f32): f32 {
	return (255 as f32) + (c - (255 as f32)) * a;
}

@inline
export function drawPixel(output: Uint8Array, pos: i32, r: f32, g: f32, b: f32): void {
	unchecked(output[pos + 0] = r as u8);
	unchecked(output[pos + 1] = g as u8);
	unchecked(output[pos + 2] = b as u8);
	unchecked(output[pos + 3] = 255);
}

@inline
export function drawGrayPixel(img: Uint8Array, i: i32, alpha: f32, output: Uint8Array): void {
	let r = img[i + 0] as f32;
	let g = img[i + 1] as f32;
	let b = img[i + 2] as f32;

	let c1 = rgb2y(r, g, b);
	let c2 = (alpha * (img[i + 3] as f32)) / (255 as f32);

	let val = blend(c1, c2);
	drawPixel(output, i, val, val, val);
}
