% contrast Stretching
pkg load image;
i = imread("low_contrast_man.png");
figure
imshow(i);
j = imadjust(i,stretchlim(i),[]);
figure
imshow(j)
