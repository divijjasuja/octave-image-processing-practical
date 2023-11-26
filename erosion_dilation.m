% Read Input Image
input_image = imread("tree.jpg");

% Displaying Input Image
input_image = uint8(input_image);
figure, imshow(input_image); title('Input Image');

% Convert the truecolor RGB image to bw image
input_image = im2bw(input_image);

% Convert the image to double
input_image = double(input_image);
figure;
imshow(input_image);

#se = [0,1,0;1,1,1;0,1,0];
se = strel("square", 3);
erodedI = imerode(input_image,se);
figure;
imshow(erodedI);

dilateI = imdilate(erodedI, se);
figure;
imshow(dilateI);
