clear all;
image = imread('../mp.tif');
imshow(image);
s = zeros(20);
s(10,:) = 1;
tophat_image = imtophat(image, s);
figure();
imshow(tophat_image);

mask = (tophat_image < 10);
removed_tophat = image;
removed_tophat(tophat_image > 10) = 0;
figure();
imshow(removed_tophat);