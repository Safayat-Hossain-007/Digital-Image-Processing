% Read the two JPG images
image1 = imread('saf.jpg');
image2 = imread('ju.jpg');

% Display the original images
figure;
subplot(2, 2, 1);
imshow(image1);
title('Image 1');
subplot(2, 2, 2);
imshow(image2);
title('Image 2');

% Convert images to grayscale
grayImage1 = rgb2gray(image1);
grayImage2 = rgb2gray(image2);

% Display the grayscale images
subplot(2, 2, 3);
imshow(grayImage1);
title('Grayscale Image 1');
subplot(2, 2, 4);
imshow(grayImage2);
title('Grayscale Image 2');

% Analyze array/matrix properties
fprintf('Size of Image 1: %d x %d\n', size(image1, 1), size(image1, 2));
fprintf('Size of Image 2: %d x %d\n', size(image2, 1), size(image2, 2));

% Perform logical operations
binaryImage1 = grayImage1 > 128; % Thresholding
binaryImage2 = grayImage2 > 128; % Thresholding

% Ensure binary images have the same size
minSize = min(size(binaryImage1), size(binaryImage2));
binaryImage1 = imresize(binaryImage1, minSize);
binaryImage2 = imresize(binaryImage2, minSize);

% Perform logical operations
unionImage = binaryImage1 | binaryImage2;
intersectionImage = binaryImage1 & binaryImage2;

% Display the binary images
figure;
subplot(2, 2, 1);
imshow(binaryImage1);
title('Binary Image 1');
subplot(2, 2, 2);
imshow(binaryImage2);
title('Binary Image 2');

% Display the results of logical operations
subplot(2, 2, 3);
imshow(unionImage);
title('Union Image');
subplot(2, 2, 4);
imshow(intersectionImage);
title('Intersection Image');
