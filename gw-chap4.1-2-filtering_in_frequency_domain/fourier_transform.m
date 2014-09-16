image = imread('../sample.tif', 'Index', 2);
imshow(image)
fourier = fft(image);
figure()
imshow(fourier)