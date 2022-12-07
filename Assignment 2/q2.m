% Assume that real and imaginary parts are independent
% 1/sqrt(2) makes the variaonce to be 1

%x = 1/sqrt(2)*(rand(N, 1) +1i*rand(N,1));


N=100000;


xa = zeros(1000,1);

x1 = zeros(1000,1);
x2 = zeros(1000,1);

for k=1 : N
    y = rand;
    z = rand;
    x = 1/sqrt(2)*(y +1i*z);
    a = y*y + z*z;
    mod = 1000*sqrt(a);
    mod = floor(mod);
    x1[mod] = x1[mod]+1;
end


plot(x1, xa);