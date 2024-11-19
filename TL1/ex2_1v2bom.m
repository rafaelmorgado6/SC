
kappa1 = 10
kappa2 = 40
kappa3 = 70
kappa4 = 100

[valor1, tempo1, tensao1] = RT030_MalhaFechada(kappa1)
[valor2, tempo2, tensao2] = RT030_MalhaFechada(kappa2)
[valor3, tempo3, tensao3] = RT030_MalhaFechada(kappa3)
[valor4, tempo4, tensao4] = RT030_MalhaFechada(kappa4)

figure(1)
plot(tempo1,valor1,"y", tempo2,valor2,"b", tempo3,valor3,"r", tempo4,valor4,"c")
xlabel('Time (s)')
title('Variação da pressão')
ylabel('Pressure (bar)')
legend('k = 10','k = 40','k = 70', 'k = 100')

figure(2)
plot(tempo1,tensao1,"y", tempo2,tensao2,"b", tempo3,tensao3,"r", tempo4,tensao4,"c")
title('Variação da Tensão')
xlabel('Time (s)')
ylabel('Tension (V)')
legend('k = 10','k = 40','k = 70', 'k = 100')
