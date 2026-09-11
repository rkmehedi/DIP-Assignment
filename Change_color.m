clc;
clear;
close all;

% Read the image
img = imread('image3.jpg');

% Display original image
figure;
imshow(img);
title('Original Image');

% Separate RGB channels
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Detect pink pixels
mask = (R > 140) & (G < 80) & (B < 90);

% Change pink to blue
R(mask) = 0;
G(mask) = 0;
B(mask) = 255;

% Combine channels
newImg = cat(3, R, G, B);

% Display result
figure;
imshow(newImg);
title('Pink/Red Changed to Blue');

% Save the output image
imwrite(newImg,'BlueRose.png');