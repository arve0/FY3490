image = imread('../mp.tif');
matlab_F = fft2(image);
F = log(abs(fftshift(matlab_F)));
imshow(F, [min(F(:)), max(F(:))]);