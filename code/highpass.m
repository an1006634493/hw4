clear;
clc;

img3 = imread('test3_corrupt.pgm');
img4 = imread('test4 copy.bmp');

img3_sharp = imsharpen(img3,'Radius',15,'Amount',1.2);
img4_sharp = imsharpen(img4,'Radius',15,'Amount',1.2);

img3_sobel = edge(img3,'sobel');
img4_sobel = edge(img4,'sobel');

img3_log = edge(img3,'log');
img4_log = edge(img4,'log');

img3_canny = edge(img3,'canny');
img4_canny = edge(img4,'canny');

figure(1)
subplot(2,6,[1 2 3])
imshow(img3)
title("ԭͼ")
subplot(2,6,[4 5 6])
imshow(img3_sharp)
title("������ģ")
subplot(2,6,[7 8])
imshow(img3_sobel)
title("Sobel��Ե")
subplot(2,6,[9 10])
imshow(img3_log)
title("Laplace��Ե")
subplot(2,6,[11 12])
imshow(img3_canny)
title("Canny��Ե")
saveas(figure(1),'C:\Users\10066\Desktop\����ͼ����\���Ĵ���ҵ\highpass_test3.jpg')

figure(2)
subplot(2,6,[1 2 3])
imshow(img4)
title("ԭͼ")
subplot(2,6,[4 5 6])
imshow(img4_sharp)
title("������ģ")
subplot(2,6,[7 8])
imshow(img4_sobel)
title("Sobel��Ե")
subplot(2,6,[9 10])
imshow(img4_log)
title("Laplace��Ե")
subplot(2,6,[11 12])
imshow(img4_canny)
title("Canny��Ե")
saveas(figure(2),'C:\Users\10066\Desktop\����ͼ����\���Ĵ���ҵ\highpass_test4.jpg')