clc;
clear;
close all;

% Read the image
img = imread('b.jpg');

% Display the image
figure;
imshow(img);
title('Image');

% Coordinates of two points
x1 = 140;
y1 = 160;

x2 = 300;
y2 = 220;

% Calculate Euclidean distance
distance = sqrt((x2-x1)^2 + (y2-y1)^2);

fprintf('Euclidean Distance = %.2f pixels\n', distance);

% Mark the points
hold on;
plot(x1,y1,'ro','MarkerSize',10,'LineWidth',2);
plot(x2,y2,'go','MarkerSize',10,'LineWidth',2);
line([x1 x2],[y1 y2],'Color','yellow','LineWidth',2);
hold off;