function stritch( gray , new_min,new_max )
x  = min(min(gray));
y  = max(max(gray));
imagee=double(gray);
imshow(gray);
figure,imhist(gray);
[w h]=size(imagee);
for i=1:w
   for j = 1:h
      index = gray(i,j);
      oldp = index-x;
      old = y - x;
      new = new_max - new_min;
      z = new/old;
      np(i,j) = ((oldp)*z)+new_min;
      
   end
end
np=uint8(np);
figure,imshow(np);
figure,imhist(np);

end

