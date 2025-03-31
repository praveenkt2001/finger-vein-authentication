% Line Tracking via Morphological Operations
img = imread('finger_vein.jpg');
gray = rgb2gray(img);
filtered = medfilt2(gray);
bw = imbinarize(filtered, 'adaptive');
skeleton = bwmorph(bw, 'skel', Inf); % Thin to line structure
imshow(skeleton);
title('Line Tracked Vein Pattern');