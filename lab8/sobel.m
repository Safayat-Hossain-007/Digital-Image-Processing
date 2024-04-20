i = imread('saf.jpg');
imshow(i);
w = fspecial('sobel');
g = imfilter(i,w,'symmetric');
figure,imshow(g,[]);
