function LaplacianSharpen(filename,n)

f = imread(filename);
f = im2double(f);
figure;
subplot(2,2,1);
imshow(f);
title('Original Image');

if n==1
    w = [0 1 0;1 -4 1;0 1 0];
    c = -1;
elseif n==2
    w = [1 1 1;1 -8 1;1 1 1];
    c = -1;
elseif n==3
    w = [0 -1 0;-1 4 -1;0 -1 0];
    c = 1;
elseif n==4
    w = [-1 -1 -1;-1 8 -1;-1 -1 -1];
    c = 1;
end

g = imfilter(f, w);
subplot(2,2,2);
imshow(g);
title('Edge Image');

g_sharp = f + (c*g);
subplot(2,2,3);
imshow(g_sharp);
title('Laplacian Sharpened Image');


