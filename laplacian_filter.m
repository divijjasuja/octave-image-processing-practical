% laplacian filter
pkg load image
i = imread("minecraft.png");
figure;
imshow(i);
title('original image');
% lap = [0,1,0;1,-4,1;0,1,0];
% other filter
lap = [1,1,1;1,-8,1;1,1,1]
output= imfilter(i,lap);
figure;
imshow(output);
filteredimage = imadd(i,output);
figure;
imshow(filteredimage);
title('Filtered image');
