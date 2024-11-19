L = 0.1e-3; 
C = 10e-6;
s  =tf('s');
R1 = 6.32;
R2 = 2*R1;
R3 = R1/2;

Gs1 = 1/(s^2*L*C+s*R1*C+1); 
Gs2 = 1/(s^2*L*C+s*R2*C+1); 
Gs3 = 1/(s^2*L*C+s*R3*C+1);

step(Gs1,Gs2,Gs3)
