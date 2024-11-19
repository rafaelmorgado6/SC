R = 10;
L = 1e-3;
C = 10e-6;

K = 1
M = 1
D = [ 1,2,4]

Rv = [5 : 20]';
L = 1e-3
C = 10e-6

t = [0 : 1e-6 : 10e-3]';
v = 2*sin(2*pi*1000*t);
vi = [t v];

for n=1 : length(Rv)
       R = Rv(n);
       out = sim('RLC_ex10.slx','StopTime','10e-3','MaxStep','1e-6');
       plot(out.simout.Time,out.simout.Data); hold on
end

hold off