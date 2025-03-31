% Image Preprocessing
img = imread('finger_vein.jpg');
gray = rgb2gray(img);
filtered = medfilt2(gray);
gaussian = imgaussfilt(filtered);
imshow(gaussian);