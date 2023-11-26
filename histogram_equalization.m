% Histogram Equalization
pkg load image
k=imread("tajmahal.jpeg");
I = rgb2gray(k);
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imhist(I,64);
J=histeq(I);
subplot(2,2,3);
imshow(J);
subplot(2,2,4);
imhist(J,64);
