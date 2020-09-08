
f = imread('text.tif'); 
f = im2double(f); 
imshow(f);
w = ones(3,3);

w = ones(31)/(20*20); 
g_cor = imfilter(f,w); 
figure; 
imshow(g_cor); 