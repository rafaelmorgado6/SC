function [k] = RT030_MalhaFechada(k)

tic
X = 0.6
K = 100

n = 400

valor = zeros(1,n);
tempo = zeros(1,n);
tensao = zeros(1,n);

for i = 1:n

    tatual = toc
    Y = RT030_GetPressure;

    erro = X - Y;

    V = K * erro;

    
    RT030_SetCompressorVoltage(V);

    if(V > 5)
    V = 5;
     tempo(i) = tatual;
     valor(i) = Y;
     tensao(i) = V;
    else 
     
     tempo(i) = tatual;
     valor(i) = Y;
     tensao(i) = V;  
    end

     
     pause(0.25)

end
figure(1)
plot(tempo,valor)
figure(2)
plot(tempo,tensao)

RT030_SetCompressorVoltage(0);
