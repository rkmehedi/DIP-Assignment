clc;
clear;
close all;

% Loading imgae
img = imread('image1.jpg'); 

% Resizing image
resizedImg = imresize(img, 0.5); 

% Output
figure('Name', 'Task 8: Change Image Size', 'Position', [100, 100, 700, 400]);

subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(resizedImg);
title('Resized Image');