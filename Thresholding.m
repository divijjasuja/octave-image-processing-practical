#c. Thresholding
pkg load image
alfa=0.1;
x=imread('tajmahal.jpeg');
ix=rgb2gray(x);
I_max=max(max(ix));
I_min=min(min(ix));
level1=alfa*(I_max-I_min)+I_min;
level2=2*level1;
level3=3*level1;
thix1=max(ix,level1.*ones(size(ix)));
thix2=max(ix,level2.*ones(size(ix)));
thix3=max(ix,level3.*ones(size(ix)));
figure(1);colormap(gray);
subplot(2,2,1);imagesc(ix);title("Lena");
subplot(2,2,2);imagesc(thix1);title('Threshold One Alfa');
subplot(2,2,3);imagesc(thix2);title('Threshold Two Alfa');
subplot(2,2,4);imagesc(thix3);title('Threshold Three Alfa');

