function [imgSides] = Sides(RGBimg,Thermalimg)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[H,W] = size(RGBimg);
W3th=(W/3)/3;
I1 = imcrop(Thermalimg,[0 0 W3th H]);
img2=imfuse(Thermalimg,RGBimg,'blend');
I2 = imcrop(img2,[W3th 0 W3th H]); %imfuse(RGBimg,Thermalimg)
W23th=W3th*2;
I3 = imcrop(RGBimg,[W23th 0 W3th H]);
imgSides=cat(2,I1,I2);
imgSides=cat(2,imgSides,I3);

end

