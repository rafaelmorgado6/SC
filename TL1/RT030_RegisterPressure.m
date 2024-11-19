function [X, Y] = RT030_RegisterPressure(Voltage, Valve) 

tempo_de_analise = 240; % em segundos                                

    time_interval_value = 0.1;                 %tempo de amostragem  
    time_value = time_interval_value;

    n = tempo_de_analise / time_interval_value; % QUANTIDADE DE AMOSTRAS 
    value = zeros(1,n);
    time = zeros(1,n);

    RT030_SetCompressorVoltage(Voltage);
    RT030_SetValve(Valve);

    
    for i = 1:n
        tstart = tic;
       

        valor_atual = RT030_GetPressure ;
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
         while toc(tstart)< time_interval_value
           
        end   
    end
   
    RT030_SetCompressorVoltage(0);
    RT030_SetValve(1);
     
    X = value(1:i);
    Y = time(1:i);

    %plot(Y',X)
    
    xlabel("tempo(s)")
    ylabel("Pressão")
    title("Analise Pressão")
    
     RT030_SetValve(0);
    
end