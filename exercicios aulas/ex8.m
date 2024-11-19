% c)

R = 10;
L = 1e-3;
C = 10e-6;

Gs = tf([L 0], [R*L*C L R]);    % s = tf('s')
                                % Gs 0 s * L / (s^2 * R * L * C + S * L + R); 

step(2 * Gs);

[y, t] = step(Gs);
plot(t, 2*y)

% d)

T = [0 : 1e-6 : 3e-3];
Vi = ones(size(t));
Vi(t > 1e-3) = 2;
Vi(t > 1e-3) = 0;

lsim(Gs, Vi, t);