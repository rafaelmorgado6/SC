
sho = 1000;
g = 9.8;
A1 = 3.14;
A2 = 0.79;
R1 = 10^6;
R2 = 2 * R1;
Q = 0.01;

a0 = sho * g/(A1*R1);
b0 = 1/A1;
c0 = sho * g/(A2*R2);
d0 = sho * g/(A2 * R1);

%condições iniciais
h10 = 0.2;
h20 = 1.0

simulink
