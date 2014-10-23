image = imread('../sample.tif', 'Index', 2);
fourier = fftshift(fft2(image));
rotated_fourier = rot90(fourier);
F = log(abs(fourier));
rF = log(abs(rotated_fourier));
inverse_image = ifft2(ifftshift(rotated_fourier));

figure();
imshow(image);
title('Original');
figure();
imshow(F, [min(F(:)), max(F(:))]);
title('FT');
figure();
imshow(F, [min(F(:)), max(F(:))]);
title('Rotated FT');
figure();
imshow(uint8(inverse_image));
title('Rotated with FT');
figure();
imshow(rot90(image));
title('Rotated original');

isequal(uint8(inverse_image), rot90(image))