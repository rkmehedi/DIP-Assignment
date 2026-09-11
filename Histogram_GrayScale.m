clc;
clear;
close all;

% Read the image
img = imread('image1.jpg');

% Convert to grayscale (if necessary)
grayImg = rgb2gray(img);

% Show image
figure;
imshow(grayImg);
title('Grayscale Image');

% Show histogram
figure;
imhist(grayImg);
title('Histogram of Grayscale Image');
xlabel('Pixel Intensity');
ylabel('Number of Pixels');