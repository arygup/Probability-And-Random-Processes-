% assume std dev = 0.5 here
% Rayleigh
% The variance of a Rayleigh distribution is 
% derived in a similar way, giving the variance 
% formula of Var(x) = σ2((4 – π)/2).


clc;
clear all;

s=0.5;
X=[0:0.01:1];

p=sqrt(-2*s*s*log(1-X));


plot(X,p);

