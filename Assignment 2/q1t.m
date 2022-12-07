n1 = 3;   n2 = 5;
delx = .001;
xmax = -ceil(log(1e-10)*n1)

x = 0:delx:xmax;
a1 = exp(-x/n1)/n1;
a2 = exp(-x/n2)/n2;
trapz(x,a1)          % norm
trapz(x,a2.*x)       % mean
trapz(x,a2)
trapz(x,a2.*x)

uh = conv(a1,a2)*delx;
x3 = 0:delx:2*xmax;
plot(x3,uh)
trapz(x3,uh)
trapz(x3,x3.*uh)


%%%%%%%https://www.mathworks.com/matlabcentral/answers/355789-convolution-of-two-probability-density-functions

