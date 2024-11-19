function [X , Y] = RT010_RegisterLevel(PumpVoltage,ValveVoltage)
%Função que para determinados valores da Pump e da Valve,
%devolve a sequência de amostras temporizadas do nível de 
%água, desde a aplicação das tensões até que o nível atinge 
%o regime estacionário



    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCESSAMENTO %%%%%%%%%%%%%%%%%%%%%%

    tempo_de_analise = 240; % em segundos                                 ##### IN ######

    time_interval_value = 0.1;                 %tempo de amostragem  
    time_value = time_interval_value;

    n = tempo_de_analise / time_interval_value; % QUNTIDADE DE AMOSTRAS 
    value = zeros(1,n);
    time = zeros(1,n);

    RT010_SetPumpVoltage(PumpVoltage);
    RT010_SetValveVoltage(ValveVoltage);

    
    for i = 1:n
        tstart = tic;
        while toc(tstart)< time_interval_value
           
        end   

        valor_atual = RT010_GetLevel();
        time(i) = time_value;
        value(i)= valor_atual;
        time_value = time_value + time_interval_value;

        if(i > (n/3))       %so apartir de 1/3 das amostras    
           k = 1;
           soma = 0;

           while k <= 12
              
               soma = soma + value(i-k);
               k = k + 1;
           end
           
           diff = abs(valor_atual-(soma /12));
           
           if diff < .05
               break;
           end
        end
    end
   
    RT010_SetPumpVoltage(0);
    RT010_SetValveVoltage(0);
                                                 
    xlabel("tempo(s)")
    ylabel("nível água")
    title("Analise Nível Água")
    
    X = value(1:i);
    Y = time(1:i);
end

