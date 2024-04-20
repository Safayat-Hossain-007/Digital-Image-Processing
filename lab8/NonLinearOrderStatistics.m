% Read the input image
i = imread('saf.jpg');

% Convert the input image to grayscale if it's RGB
if size(i, 3) == 3
    i = rgb2gray(i);
end

% Apply rank filtering
h = ordfilt2(i, 1, ones(3, 3)); % Minimum filter
h1 = ordfilt2(i, 3*3, ones(3, 3)); % Maximum filter
h2 = ordfilt2(i, median(1:3*3), ones(3, 3)); % Median filter

% Display the images
subplot(2, 2, 1);
imshow(i);
title('Original Image');

subplot(2, 2, 2);
imshow(h, []);
title('Minimum Filter');

subplot(2, 2, 3);
imshow(h1, []);
title('Maximum Filter');

subplot(2, 2, 4);
imshow(h2, []);
title('Median Filter');
