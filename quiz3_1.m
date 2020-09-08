function LapSharpen(filename,n)

a = imread(filename);
a = im2double(a);
figure;
subplot(2,2,1);
imshow(a);
title('original image');

if n==1
    w = [0 1 1;1 -4 1;0 1 0]
    c = -1;
else   if n==2
    w = [1 1 1;1 -8 1;1 1 0]
    c = -1;
else   if n==3
    w = [0 -1 0;1 4 1;0 -1 0]
    c = 1;  
else   if n==4
    w = [-1 -1 -1;1 8 1;-1 -1 -1]
    c = 1;
end
    
g = imfilter(a , w);
subplot(2,2,1);
imshow(g);
title('edge image')



