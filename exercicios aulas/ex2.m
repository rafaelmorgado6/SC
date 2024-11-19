% y = 1 + (b/(a-b)) * exp(-a*t) + (a/(b-a)) * exp(-b*t)

t = [0:0.01:10];
a1 = 0.1;
b1 = 0.2;
a2 = 1;
b2 = 2;
a3 = 10;
b3 = 12;

y1 = 1 + (b1/(a1-b1)) * exp(-a1*t) + (a1/(b1-a1)) * exp(-b1*t);
y2 = 1 + (b2/(a2-b2)) * exp(-a2*t) + (a2/(b2-a2)) * exp(-b2*t);
y3 = 1 + (b3/(a3-b3)) * exp(-a3*t) + (a3/(b3-a3)) * exp(-b3*t);

plot(t,y1,'b',t,y2,'r',t,y3,'g')

