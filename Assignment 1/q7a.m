% assume Lambda = 10 here
% now to get X exponentially distributed over Lambda 
% X = -ln(1-rand())/Lambda as F(x) = 1 - e^Lambda*x
% Now to cross verify our data, the mean must be close to 1/Lambda or 0.1
% And also via graph

clc;
clear all;
N=100000;
lambda=10;
sum=0;
for k=1 : N
    y = rand;
    z = -log(1-y)/lambda;
    sum = sum + z;
end
X=[0:0.01:1];
z = -log(1-X)/lambda;
plot(X, z);
sum/N

