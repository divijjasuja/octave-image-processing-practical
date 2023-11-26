% open image
pkg load image;
minecraft = imread("minecraft.png");
tajmahal = imread("tajmahal.jpeg");
figure
imshow(tajmahal);
figure
imshow(minecraft);

% Resize image
small_minecraft = imresize(minecraft,0.1);
figure
imshow(small_minecraft);

% RGB to Grayscale
figure
gray_minecraft = rgb2gray(minecraft);
imshow(gray_minecraft);

% Rgb to black&white
figure
blackandwhite_minecraft = im2bw(minecraft);
imshow(blackandwhite_minecraft);

% Seperate image into r,g,b planes
r = size(minecraft,1);
c = size(minecraft,2);
R = zeros(r,c,3);
G = zeros(r,c,3);
B = zeros(r,c,3);

R(:,:,1) = minecraft(:,:,1);
G(:,:,2) = minecraft(:,:,2);
B(:,:,3) = minecraft(:,:,3);

figure, imshow(uint8(R));
figure, imshow(uint8(G));
figure, imshow(uint8(B));

redChannel = minecraft(:,:,1);
greenChannel = minecraft(:,:,2);
blueChannel = minecraft(:,:,3);
rgbImage = cat(3,redChannel,greenChannel,blueChannel);
figure,imshow(rgbImage)
figure,imshow(redChannel)
figure,imshow(blueChannel)
figure,imshow(greenChannel)

