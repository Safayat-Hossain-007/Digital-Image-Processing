i = imread('saf.jpg');
w = fspecial('laplacian',0.5);
g = imfilter(i,w,'symmetric');
figure,imshow(g,[]);
