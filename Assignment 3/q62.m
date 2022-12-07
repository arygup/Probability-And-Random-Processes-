x = [1: 1: 100];

% let 4 vectors Bernouli  
% iid random variables
% let p = 0.5

y1 = binopdf(x,100,0.2);
%plot(x, y1);

y2 = binopdf(x,100,0.5);
y3 = binopdf(x,100,0.5);
y10 = binopdf(x,100,0.5);
y30 = binopdf(x,100,0.5);

y2 = y1 + y2;

y3 = y2 + y3;

for i = 1:9
       z = binopdf(x,100,0.5);
       y10 = y10 + z;
end

for i = 1:29
       z = binopdf(x,100,0.5);
       y30 = y30 + z;
end

y2 = y2/(sqrt(2)*var(y2));
y3 = y3/(sqrt(3)*var(y3));
y10 = y10/(sqrt(10)*var(y10));
y30 = y30/(sqrt(30)*var(y30));

plot(x,y2,'o-',x,y3,'*-',x,y10,'s-',x,y30,'--');
