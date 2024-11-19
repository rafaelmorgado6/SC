

%RefPumpVoltage = 2.5;     %%valor ilustrativo, deve ser alterado posteriormente
%RefValveVoltage = 5;    %const.

%delta_v = 0.2;
%var_RefPumpVoltage = RefPumpVoltage;


%for t = 1:5
    
 %   [X,Y]=RT010_RegisterLevel(var_RefPumpVoltage,RefValveVoltage);
    
 %   var_RefPumpVoltage = var_RefPumpVoltage + delta_v;
    
%end

%scatter( X(1),Y(1),'r',X(2),Y(2),'b',X(3),Y(3),'k',X(4),Y(4),'g',X(5),Y(5),'y')
%xlabel("tempo(s)")
%ylabel("nível água")
%title("Analise Nível Água")

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ESVAZIAMENTO %%%%%%%%%%%%%%%%%%%%%%%%%%
    x = 20;
    RT010_SetPumpVoltage(0);
    RT010_SetValveVoltage(0);
    
    while x > 0.5
        RT010_SetValveVoltage(5);
        x = RT010_GetLevel();
    end
    RT010_SetValveVoltage(0);

RT010_RegisterLevel(2.9,5);

 [level1,Time1] = RT010_RegisterLevel(3,5);
 RT010_RegisterLevel(2.9,5);
 disp('1')

 [level2,Time2] = RT010_RegisterLevel(3.1,5);
 RT010_RegisterLevel(2.9,5);
 disp('2')

[level3,Time3] = RT010_RegisterLevel(3.2,5);
RT010_RegisterLevel(2.9,5);
disp('3')

[level4,Time4] = RT010_RegisterLevel(3.25,5);
RT010_RegisterLevel(2.9,5);
disp('4')

[level5,Time5] = RT010_RegisterLevel(3.3,5);
RT010_RegisterLevel(2.9,5);
disp('5')

[level6,Time6] = RT010_RegisterLevel(3.35,5);
RT010_RegisterLevel(2.9,5);
disp('6')

[level7,Time7] = RT010_RegisterLevel(3.4,5);
RT010_RegisterLevel(2.9,5);
disp('7')



%subplot(4,2,1)
%plot(Time1,level1,"g")
%xlabel('Tensão = 3')

subplot(4,2,2)
plot(Time2,level2,"r")
xlabel('Tensão = 3.1')

subplot(4,2,3)
plot(Time3,level3,"b")
xlabel('Tensão = 3.2')

subplot(4,2,4)
plot(Time4,level4,"y")
xlabel('Tensão = 3.25')

subplot(4,2,5)
plot(Time5,level5,"c")
xlabel('Tensão = 3.3')

plot(Time2,level2,"r", Time3,level3,"b", Time4,level4,"y", Time5,level5,"c")

%subplot(4,2,6)
%plot(Time6,level6,"m")
%xlabel('Tensão = 3.35')

%subplot(4,2,7)
%plot(Time7,level7,"k")
%xlabel('Tensão = 3.4')
