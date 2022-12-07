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

lambda=20;
sum=0;
for k=1 : N
    y = rand;
    z2 = -log(1-y)/lambda;
    sum = sum + z2;
end
Y=[0:0.01:1];
z2 = -log(1-Y)/lambda;

plot(X, z+z2);


