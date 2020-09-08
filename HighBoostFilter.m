function HighBoostFilter(image,n,k)

f = imread(image); 
f = im2double(f); 

w = ones(n)/(n*n); 
f_dash = imfilter(f,w,'conv'); 

g_mask = f - f_dash;

g = f + (k*g_mask);

figure;
subplot(2,2,1);
imshow(f);
title('Original Image');

subplot(2,2,2);
imshow(f_dash);
title('Blurred Image');

subplot(2,2,3);
imshow(g_mask);
title('Edges Image');

subplot(2,2,4);
imshow(g);
title('Highboost Filtered Image');

end

