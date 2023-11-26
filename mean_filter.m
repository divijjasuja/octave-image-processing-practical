% Mean Filter
pkg load image
input_image =imread("tajmahal.jpeg");
#subplot(2,1,1);
figure;
imshow(input_image);
title('Original Image');
input_image = double(input_image);
windowSize = 3; % Whatever you want.
kernel = ones(windowSize, windowSize) ;
Mx = [-1 0 1; -1 0 1; -1 0 1];
filtered_image = zeros(size(input_image));
for i = 1:size(input_image, 1) - 2
	for j = 1:size(input_image, 2) - 2
    filtered_image(i+1, j+1) = sum(sum(kernel .* input_image(i:i+2, j:j+2)));
    output_image(i+1, j+1) = filtered_image(i+1, j+1)/9;
  endfor
endfor
#filtered_image = (filtered_image / 9);
output_image = uint8(output_image);
#subplot(2,1,2);
figure;
imshow(output_image);
title('Output Image');
