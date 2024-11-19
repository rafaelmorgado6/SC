
s = tf('s');
Gs = 1/(s*(s+7)*(s+11))
Hs = 0;
Ps = 0;


sisotool('rlocus',Gs,Gc,Hs,Ps)


