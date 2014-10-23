function f()
    % imfinfo show images in file - here we want image nr two (of three)
    image = imread('sample.tif', 'Index', 2);
    %image(100:110,100:110)
    mask = ones(3)./9;
    blur_image = imfilter(image, mask, 'conv');
    imshow(image)
    figure()
    imshow(blur_image)
end