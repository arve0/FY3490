% read
img = imread('sample.tif');
% select red, indicies start at 1
% special name for last: 'end' ex: img(1024:end,:,end)
img = img(:,:,1);
% view
imshow(img);
% invert
img = 255.-img;
figure();
imshow(img);