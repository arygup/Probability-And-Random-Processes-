% The probability density function (pdf) of the 
% d-dimensional multivariate normal distribution is
% y = exp((−(x-μ)Σ^-1(x-μ)')/2)/(√∣Σ∣(2π)^d)
% mathworksref

% setting mu [0,0] mean scalar
mu = [0 0];

% initializing K Covariance matrix
K = [1 0; 0 1];

% initiaiting evenly spaced grid in 2D to plot on
x1 = -3:0.2:3;
x2 = -3:0.2:3;
[X1,X2] = meshgrid(x1,x2);
X = [X1(:) X2(:)];

% calculate using the mvnpdf function
% normal distribution over the grid



% way 1 is using the mvnpdf function
y = mvnpdf(X,mu,K);
y = reshape(y,length(x2),length(x1));


% clearly even when we look at 
% the doc for mvnpdf its obvious that the 
% fuction output is exactly the formula of 
% the pdf we want
% https://www.mathworks.com/help/stats/mvnpdf.html#d124e679090


% way 2 is calculating using 
% the function defination
% y = exp((x-mu)* inverse(K)/2)/sqrt(mod(K)*(2*3.141)^d)


 

% plot the probability density function
surf(x1,x2,y)
caxis([min(y(:))-0.5*range(y(:)),max(y(:))])
axis([-3 3 -3 3 0 0.4])
