% assume parameter = 0.3 here
% Laplace
% Here, μ is a location parameter and b>0, 
% which is sometimes referred to as the "diversity", 
% is a scale parameter. If μ=0 and b=1, the positive 
% half-line is exactly an exponential distribution 
% scaled by 1/2.
clc;
clear all;

b=1;
u=0;

X=[0:0.01:1];

p=u+b*log(2*X);


plot(X, p);

