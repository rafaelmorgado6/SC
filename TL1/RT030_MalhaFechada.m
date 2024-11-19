function [X, Y, T] = RT030_MalhaFechada(kappa)

tic
X = 0.6
n = 300

valor = zeros(1,n);
tempo = zeros(1,n);
tensao = zeros(1,n);

for i = 1:n

    tatual = toc
    Y = RT030_GetPressure;

    erro = X - Y;

    V = kappa * erro;

    if(V > 5)
    V = 5;
    end
     
     tempo(i) = tatual;
     valor(i) = Y;
     tensao(i) = V;  
    

    RT030_SetCompressorVoltage(V);
     
     pause(0.25)

end

X = valor(1:i);
Y = tempo(1:i);
T = tensao(1:i);

while(RT030_GetPressure() > 0.0015)
RT030_SetCompressorVoltage(0);
end
