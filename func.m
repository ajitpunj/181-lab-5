function[]= func(x)
load('testSet.mat');
load('NN.mat');
w = testData(:,x);
y = reshape(w,28,28);
imshow(y);

z1 = 1./(1+exp(-((finalW1L1*testData(:,x))+finalB1L1)));
z2 = 1./(1+exp(-((finalW1L2*z1)+finalB1L2)));
z3 = finalSoftmaxTheta*z2;
[row, col] = max(z3);
value = col
end