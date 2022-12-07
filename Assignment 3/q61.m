x = [0:.001:1];

% let 4 vectors of zero mean, 1 variance 
% iid Uniform(0,1) random variables
y1 = normpdf(x,0,1);
y2 = normpdf(x,0,1);
y3 = normpdf(x,0,1);
y10 = normpdf(x,0,1);
y30 = normpdf(x,0,1);

y2 = y1 + y2;

y3 = y2 + y3;

for i = 1:9
       z = normpdf(x,0,1);
       y10 = y10 + z;
end

for i = 1:29
       z = normpdf(x,0,1);
       y30 = y30 + z;
end

y2 = y2/sqrt(2);
y3 = y3/sqrt(3);
y10 = y10/sqrt(10);
y30 = y30/sqrt(30);
plot(x,y2,'o-',x,y3,'*-',x,y10,'s-',x,y30,'--');
