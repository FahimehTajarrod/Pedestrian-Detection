function [imgSurrounding] = Surrounding(RGBimg,Thermalimg)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

I1 = imcrop(RGBimg,[0 0 120 512]);
img2=imfuse(Thermalimg,RGBimg,'blend');
I21=imcrop(RGBimg,[120 0 399 96]);
I22=imcrop(img2,[120 96 399 319]);
I23=imcrop(RGBimg,[120 416 399 95]);
I2=cat(1,I21,I22);
I2=cat(1,I2,I23);
I3 = imcrop(RGBimg,[521 0 119 512]);
imgSurrounding=cat(2,I1,I2);
imgSurrounding=cat(2,imgSurrounding,I3);
end

