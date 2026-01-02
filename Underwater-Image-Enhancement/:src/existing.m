% CLAHE for underwater image enhancement
% Contrast limited adaptive histogram equalisation

%
clc
clear all
close all
[J P]=uigetfile('*.*','Select Input Image');
[X MAP] = imread(J);
%
% Convert the indexed image into a truecolor (RGB) image.
RGB = imresize(X,[512 512]); 

%
% Convert the RGB image into the HSV(hue,saturation and value) color space.

HSV = rgb2hsv(RGB);
%

% Perform CLAHE.
HSV(:,:,1) = adapthisteq(HSV(:,:,1),'NumTiles',...
                         [8 8],'ClipLimit',0.005,'Distribution','rayleigh');
%
HSV(:,:,2) = adapthisteq(HSV(:,:,2),'NumTiles',...
                         [8 8],'ClipLimit',0.005,'Distribution','rayleigh');

HSV(:,:,3)=adapthisteq(HSV(:,:,3),'NumTiles',...
                         [8 8],'ClipLimit',0.005,'Distribution','rayleigh');
% Convert the resultant image back into the RGB color space.

enhanced = hsv2rgb(HSV); 
%
% Display the original image and result.
figure, imshow(RGB); title('Input Image')
figure, imshow(enhanced);title('Enhanced Image')
[MSE, PSNR] = Calc_MSE_PSNR(RGB,enhanced)
