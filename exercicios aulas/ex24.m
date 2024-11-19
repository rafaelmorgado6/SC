%b)

k1 = 0.5;
k2 = 1;
k3 = 2; 
k4 = 7.8;
s = tf('s');
Gs1 = k1 / (s^2+2*s+k1);
Gs2 = k2 / (s^2+2*s+k2);
Gs3 = k3 / (s^2+2*s+k3);
Gs4 = k4 / (s^2+2*s+k4);
step(Gs1,Gs2,Gs3,Gs4)
legend('k=0.5', 'k=1', 'k=2', 'k=7.8' )

%d)          
k11=[7.81 10 15]   
figure(2)
for i=1:3
    Gs=k11/(s^2+2*s+k1(i))
    step(Gs)  %faz o grafico -> botao esquerdo do rato -> Charateristics -> 
              % -> Settling Time -> Ir ao ponto e ver o settling time
end