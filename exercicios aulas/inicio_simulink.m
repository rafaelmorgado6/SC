R = 10;
L = 1e-3;
C = 10e-6;

plot(out.vo.Time,out.vo.Data)

Rv = [5 : 20]';
L = 1e-3
C = 10e-6

t = [0 : 1e-6 : 10e-3]';
v = 2*sin(2*pi*1000*t);
vi = [t v];

for n=1 : length(Rv)
       R = Rv(n);
       out = sim('RLC_example.slx','StopTime','10e-3','MaxStep','1e-6');
       plot(out.vo.Time,out.vo.Data); hold on
end

hold off