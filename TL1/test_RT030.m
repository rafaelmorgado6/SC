
RefVoltage = 4.5;
RefValve = 0;                               
RT030_RegisterPressure(RefVoltage, RefValve);
[Level, Time] = RT030_RegisterPressure(0,0);
plot(Time, Level)
