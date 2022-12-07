% assume standard deviation = 3 here
% Gaussian
% amp vs x
clc;
clear all;

sd=3;
m=1;

X=[0:0.01:1];
p=normpdf(X,m, sd);


plot(X, p);

