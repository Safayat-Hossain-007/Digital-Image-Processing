i = imread('saf.jpg');
imshow(i);
w = fspecial('average',[3,3]);
g = imfilter(i,w,'symmetric');
figure,imshow(g,[]);
