%Prewitt
pkg load image
I=imread("tajmahal.jpeg");
%subplot(2,2,1);
figure;
imshow(I);
title('Original Image');
%lap= [0,1,0;1,-4,1;0,1,0];
Gx= [-1,-1,-1;0,0,0;1,1,1];
outputGx= abs(imfilter(I,Gx));
figure;
%subplot(2,2,2);
imshow(outputGx);
title('Gx Image');

Gy= [-1,0,1;-1,0,1;-1,0,1];
outputGy= abs( imfilter(I,Gy));
figure;
%subplot(2,2,3);
imshow(outputGy);
title('Gy Image');
filteredImage= imadd(outputGx,outputGy);
figure;
%subplot(2,2,4);
imshow(filteredImage);
title('Filtered Image');
