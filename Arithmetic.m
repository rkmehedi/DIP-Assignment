clc;
clear;
close all;

img1 = imread('t3.jpg');
img2 = imread('t1.jpg');

img2 = imresize(img2, [size(img1,1) size(img1,2)]);

imgAdd = imadd(img1, img2);
imgSub = imsubtract(img1, img2);
imgMul = immultiply(img1, img2);
imgDiv = imdivide(img1, img2);

figure('Name', 'Input Images', 'Position', [100, 100, 700, 400]);
subplot(1, 2, 1);
imshow(img1);
title('Image 1');

subplot(1, 2, 2);
imshow(img2);
title('Image 2');

figure('Name', 'Addition Result');
imshow(imgAdd);
title('Addition (Image 1 + Image 2)');

figure('Name', 'Subtraction Result');
imshow(imgSub);
title('Subtraction (Image 1 - Image 2)');

figure('Name', 'Multiplication Result');
imshow(imgMul);
title('Multiplication (Image 1 * Image 2)');

figure('Name', 'Division Result');
imshow(imgDiv);
title('Division (Image 1 / Image 2)');
