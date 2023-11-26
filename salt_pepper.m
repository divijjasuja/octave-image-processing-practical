%Salt and pepper noise
pkg load image
input_image =imread("tajmahal.jpeg");
figure;
imshow(input_image);
title('Original Image');
J = imnoise(input_image,'salt & pepper',0.05);
figure;
imshow(J);
title('Noisy  Image');

# remove salt and pepper noise using averaging filter
H = fspecial('average',[3,3]);
Kaverage = imfilter(J, H);
figure;
imshow(Kaverage);
title('Noise free Image');

# remove saalt and pepper noise using median filter
I = rgb2gray(J)
Kmedian = medfilt2(I);
figure;
imshow(Kmedian);
title('Noise free Image after median filter');
