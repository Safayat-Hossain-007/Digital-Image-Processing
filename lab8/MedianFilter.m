 % Read the input image
g = imread('saf.jpg');

% Convert the input image to grayscale if it's RGB
if size(g, 3) == 3
    g = rgb2gray(g);
end

% Apply median filtering
m = medfilt2(g, [3, 3]);

% Display the filtered image
imshow(m, []);
