%Ex27

%%
%c)

s=tf('s');

L=0.1e-3;
C=10e-6;
R=6.32;

R=[R/2 R R*2];

for i=1:3
Gs(i)=(1/(L*C))/(s^2+s*R(i)/L+1/(L*C));
subplot(1,3,i)
step(10*Gs(i))
end

%%
%d)

L=0.1e-3;
C=10.5e-6;   %por tentativas modificar C e R até chegar a PO=20% e tr=50us
R=2.8;

Gsd=(1/(L*C))/(s^2+s*R/L+1/(L*C));

figure(2)
step(10*Gsd)