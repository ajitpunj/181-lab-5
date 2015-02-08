clc;clear;
y=imread('images/image1.jpg');
%imshow(y)
Y=im2bw(y,.5);
[BW, threshold]=edge(Y,'sobel');
imshow(Y)
%find first white pixel (binary value 1) from top center
s=size(Y)
s(1)
s(2)
i=1;
%find first white pixel
while Y(s(1)/2,i) ~=1
    i=i+5;
end
i
%find first black pixel in white area (i value is in white area now)
while Y(s(1)/2,i) ~=0
    i=i+1;
end
i
%i has value of side1
j=s(2)
while Y(s(1)/2,j) ~=1
    j=j-5;
end
j
%find first black pixel in white area (i value is in white area now)
while Y(s(1)/2,j) ~=0
    j=j-1;
end
%j=right side
j

t=1;
while Y(t,s(2)/2) ~=1
    t=t+5;
end

while Y(t,s(2)/2) ~=0
    t=t+1;
end
b=s(1);
while Y(b,s(2)/2) ~=1
    b=b-5;
end


while Y(b,s(2)/2) ~=0
    b=b-1;
end
b
t

Y2=Y(t:b,i:j);
figure
imshow(Y2)