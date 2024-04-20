
I = imread("trees.tif");
figure

imshow(I);
Q= I - 20;
imwrite(Q,mTrees);
figure

imshow(Q);