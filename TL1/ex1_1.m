
RefVoltage = 4.5;
RefValve = 0;                               
RT030_RegisterPressure(RefVoltage, RefValve);
[Level, Time] = RT030_RegisterPressure(0,0);

for i=1:length(Time)
tau(i) = -Time(i)/log(Level(i)/0.8)      
end

m_tau = mean(tau)
c = 0.8*exp(-Time/m_tau)
plot(Time,c,'r',Time, Level,'g')
legend('Valores Obtidos','valores obtidos pelo tau')
grid on


