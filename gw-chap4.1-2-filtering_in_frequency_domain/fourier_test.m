f = zeros(301,301);
f(130:170, 1:301) = 1;
f(100:200, 130:170) = 1;
figure();
imshow(f,'InitialMagnification','fit');

F = fft2(f);
F = fftshift(F);
rF = rot90(F);
rrF = rot90(rF,3);
F2 = log(abs(F));
F3 = log(abs(rot90(F)));
figure();
imshow(F3, [-1,5], 'InitialMagnification', 'fit');
colormap(jet); 
colorbar;
figure();
imshow(F2,[-1 5],'InitialMagnification','fit');
colormap(jet); 
colorbar;

f = ifft2(ifftshift(rF));
figure();
imshow(f, 'InitialMagnification', 'fit');