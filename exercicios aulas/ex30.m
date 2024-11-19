%b)

s=tf('s');

k=9;
Gs=27/(s+3)^3;
Ts=feedback(k*Gs,1);  %podemos logo colocar assim e nao precisamos de estar
                      %a calcular a funçao transferencia, se quisermos
                      %saber como é a função transferencia basta escrever
                      %Ts na command window
step(Ts)

%falta explicar o resultado que nao entendi, so vejo que diverge mas nao
%sei o que quer dizer...

%%

%c)

k1=[0:0.01:10]';
p=[];

for i=1:length(k1)
    p(:,i)=roots([1 9 27 27*(k1(i)+1)]);  %função roots da nos os polos do sistema ; 
                                          %sistema de ordem 3 tem 3 polos por cada k
                                          %usado
end

hold on
for n=1:3
    plot(real(p(n,:)),imag(p(n,:)));        %desenhar o plano imaginario com os 3 polos
end
grid on
hold off

%com o aumento do k ,ou seja, com a evoluçao do regime estacionario, dois
%dos tres polos irão estar a entrar no semi-plano direito, e um dos polos
%irá se afastar ainda mais do ponto (0,0) diminuido a estabilidade do sistema.
%Deste modo, o sistema entrara num regime instável, deteriorando o regime
%transitorio e melhorando o regime estacionario.
