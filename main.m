%------GEOMETRY-----
%SCA=0.5808;        % m
y = 0.02323;        % m
x = 0.04981;        % m
delta0 = 25;        % deg

x_min=-0.00515061;  % m
x_max=0.0145;       % m

dx=(x_min:0.0001:x_max);

delta = geometry(y, x, dx, delta0);

clear y x delta0 x_min x_max;

%------FORCES-------

rho = 1.2255;   % kg/m^3
S = 1.965;      % m^2

v_min = 10;     % m/s
v_max = 100;    % m/s

v = linspace(v_min, v_max, 100);

Q = actuator_load(rho, S, delta, v);

clear rho S v_min v_max;
