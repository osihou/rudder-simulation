% Add to execution path
addpath('geometry') 
addpath('loads')
addpath('actuator') 
savepath pathdef.m

% Clear variables and a screen.
clear; close all; clc;

%------GEOMETRY-----
%SCA=0.5808;        % m
y = 0.02323;        % m
x = 0.04981;        % m
delta0 = 25;        % deg

x_min=-0.00515061;  % m
x_max=0.0145;       % m

dx=(x_min:0.00001:x_max);

delta = geometry(y, x, dx, delta0);

clear y x delta0 x_min x_max;

%------LOADS-------

rho = 1.2255;   % kg/m^3
S = 0.1 * 1.965;      % m^2

v_min = 100;    % m/s
v_max = 300;    % m/s

v = linspace(v_min, v_max, 100);

Q =  actuator_load(rho, S, delta, v);

clear rho S v_min v_max;

%-------ACTUATOR-----
m_actuator = 0.001;    % weight of actuator
K = 500000;             % bulk modulus

% A1 = 0.000490864;   % Area 1 m^2
% A2 = 0.000038485;   % Area 2 m^2
% 
% V01 = 0.00000687;      % Volume 1 m^3
% V02 = 0.0000008274177;   % Volume 2 m^3
A1 = 0.00490864;   % Area 1 m^2
A2 = 0.00038485;   % Area 2 m^2

V01 = 0.0000687;      % Volume 1 m^3
V02 = 0.000008274177;   % Volume 2 m^3

% A1 = 4.90874e-4;   % Area 1 m^2
% A2 = 3.0e-4;   % Area 2 m^2
% 
% V01 = 2.5283e-6;      % Volume 1 m^3
% V02 = 4.35e-6;   % Volume 2 m^3

% A1 = 2;   % Area 1 m^2
% A2 = 1;   % Area 2 m^2
% 
% V01 = 2;      % Volume 1 m^3
% V02 = 1;   % Volume 2 m^3