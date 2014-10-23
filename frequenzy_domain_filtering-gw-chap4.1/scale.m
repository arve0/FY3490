function [ output ] = scale( image )
%SCALE Scales image to range 0:255
%   Takes an 2d array image, and return a intensity scaled image

% from range 0
minimum = min(image(:));
output = image-minimum;

% scale up to 255
maximum = max(image(:));
output = output/maximum*255;

% make sure its in uint8
output = uint8(output);

end

