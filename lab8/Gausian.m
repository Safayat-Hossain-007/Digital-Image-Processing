i = imread('saf.jpg');
imshow(i);
w = fspecial('gaussian',[3,3],0.5);
g = imfilter(i,w,'symmetric');
figure,imshow(g,[]);
