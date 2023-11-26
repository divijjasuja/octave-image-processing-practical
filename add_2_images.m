#a.	Addition of two images
pkg load image
I = imread('minecraft.png');
a = imresize(I, [400,400]);
figure
imshow(a);
J = imread('tajmahal.jpeg');
b =imresize(J, [400,400]);
figure
imshow(b);
K = imadd(a,b);
figure
imshow(K)

