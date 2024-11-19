%%
%b)

s=tf('s');

k=5.8431;
Gs=1/((s+1)*(s+2));

Ts=feedback(k*Gs,1);

step(Ts)

%%
%c)

k1=[1 2 5 10]; %diferentes k 

for i=1:length(k)
Es(i)=1/(1+k1(i)*Gs);  %Expressao erro

subplot(2,2,i)
step(Es(i))         %Resposta do erro ao degrau unitario

EsFinal(i)=2/(2+k1(i)) %confirmar que os valores do erro finais sao os
                       %correspondentes aos valores do erro no regime 
                       %estacionario 
end
