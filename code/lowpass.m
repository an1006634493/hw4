clear;
clc;

img1 = imread('test1.pgm');
img2 = imread('test2.tif');

img1_med_3 = medfilt2(img1,[3,3]);
img1_med_5 = medfilt2(img1,[5,5]);
img1_med_7 = medfilt2(img1,[7,7]);

img2_med_3 = medfilt2(img2,[3,3]);
img2_med_5 = medfilt2(img2,[5,5]);
img2_med_7 = medfilt2(img2,[7,7]);

gauss3 = fspecial('gaussian',[3,3],1.5);
gauss5 = fspecial('gaussian',[5,5],1.5);
gauss7 = fspecial('gaussian',[7,7],1.5);

img1_gauss_3 = imfilter(img1,gauss3,'replicate');
img1_gauss_5 = imfilter(img1,gauss5,'replicate');
img1_gauss_7 = imfilter(img1,gauss7,'replicate');

img2_gauss_3 = imfilter(img2,gauss3,'replicate');
img2_gauss_5 = imfilter(img2,gauss5,'replicate');
img2_gauss_7 = imfilter(img2,gauss7,'replicate');

figure(1)
subplot(3,3,1)
imshow(img1_med_3)
title("中值滤波 3x3")
subplot(3,3,2)
imshow(img1_med_5)
title("中值滤波 5x5")
subplot(3,3,3)
imshow(img1_med_7)
title("中值滤波 7x7")
subplot(3,3,4)
imshow(img1_gauss_3)
title("高斯滤波 3x3")
subplot(3,3,5)
imshow(img1_gauss_5)
title("高斯滤波 5x5")
subplot(3,3,6)
imshow(img1_gauss_7)
title("高斯滤波 7x7")
subplot(3,3,8)
imshow(img1)
title("原图")
saveas(figure(1), 'C:\Users\10066\Desktop\数字图像处理\第四次作业\lowpass_test1.jpg', 'jpg')

figure(2)
subplot(3,3,1)
imshow(img2_med_3)
title("中值滤波 3x3")
subplot(3,3,2)
imshow(img2_med_5)
title("中值滤波 5x5")
subplot(3,3,3)
imshow(img2_med_7)
title("中值滤波 7x7")
subplot(3,3,4)
imshow(img2_gauss_3)
title("高斯滤波 3x3")
subplot(3,3,5)
imshow(img2_gauss_5)
title("高斯滤波 5x5")
subplot(3,3,6)
imshow(img2_gauss_7)
title("高斯滤波 7x7")
subplot(3,3,8)
imshow(img2)
title("原图")
saveas(figure(2), 'C:\Users\10066\Desktop\数字图像处理\第四次作业\lowpass_test2.jpg', 'jpg')