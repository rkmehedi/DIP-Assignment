clc;
clear;
close all;

% Read the image
img = imread('image1.jpg');

% Convert to grayscale if the image is RGB
if size(img,3) == 3
gray = rgb2gray(img);
else
gray = img;
end

% Convert to binary image
bw = imbinarize(gray);

% Make sure the objects are white
if mean(bw(:)) > 0.5
bw = ~bw;
end

% Display original image
figure;
imshow(img);
title('Original Image');

% Display binary image
figure;
imshow(bw);
title('Binary Image');

% Find perimeter using 4-connected neighborhood
perim4 = bwperim(bw,4);

figure;
imshow(perim4);
title('Perimeter using 4-Connected Neighborhood');

% Count perimeter pixels
P4 = sum(perim4(:));

% Find perimeter using 8-connected neighborhood
perim8 = bwperim(bw,8);

figure;
imshow(perim8);
title('Perimeter using 8-Connected Neighborhood');

% Count perimeter pixels
P8 = sum(perim8(:));

% Display results
fprintf('Perimeter using 4-connected neighborhood = %d pixels\n', P4);
fprintf('Perimeter using 8-connected neighborhood = %d pixels\n', P8);