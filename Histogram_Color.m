clc;
clear;
close all;

% Read the image
img = imread('image1.jpg');

% Display the image
figure;
imshow(img);
title('Original Image');

% Display histogram of each color channel
figure;

subplot(3,1,1);
imhist(img(:,:,1));
title('Red Channel Histogram');

subplot(3,1,2);
imhist(img(:,:,2));
title('Green Channel Histogram');

subplot(3,1,3);
imhist(img(:,:,3));
title('Blue Channel Histogram');