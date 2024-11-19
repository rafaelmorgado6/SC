clear
close
x = 20;
RT010_SetPumpVoltage(0)
RT010_SetValveVoltage(0)
while x > 0.5
    RT010_SetValveVoltage(5);
    x = RT010_GetLevel();
end
RT010_SetValveVoltage(0);

 
tempo_de_analise = 240; % em segundos                                         ##### IN ######

time_interval_value = 0.1;                 %tempo de amostragem  
time_value = time_interval_value;

n = tempo_de_analise / time_interval_value; % QUNTIDADE DE AMOSTRAS 
value = zeros(1,n);
time = zeros(1,n);

RT010_SetPumpVoltage(2.65);
RT010_SetValveVoltage(3.85);

ACTIVATE = 0;%variavel ativação da media
for i = 1:n
    tstart = tic;
    while toc(tstart)< time_interval_value
        %disp('Entrou no ciclo');
    end   
    
    valor_atual = RT010_GetLevel();
    time(i) = time_value;
    value(i)= valor_atual;
    time_value = time_value + time_interval_value;
    
    
    if(i > (n/3))       %so apartir de 1/3 das amostras    
       k = 1;
       soma = 0;
       
       while k <= 12
           disp('soma:')
           soma = soma + value(i-k)
           k = k + 1;
       end
       disp('diferença: ')
       diff = abs(valor_atual-(soma /12))
       if diff < .05
           break;
       end
    end
    
        %disp('Novo i')
    
    
    
end
disp("saiu do ciclo")
RT010_SetPumpVoltage(0);
RT010_SetValveVoltage(0);


plot(time,value,'.');           %                                               ####### OUT ##########
xlabel("tempo(s)")
ylabel("nível água")
title("Analise Nível Água")

