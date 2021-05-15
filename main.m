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

dx=(x_min:0.0001:x_max);

delta = geometry(y, x, dx, delta0);

clear y x delta0 x_min x_max;

%------LOADS-------

rho = 1.2255;   % kg/m^3
S = 1.965;      % m^2

v_min = 100;    % m/s
v_max = 300;    % m/s

v = linspace(v_min, v_max, 100);

Q = actuator_load(rho, S, delta, v);

clear rho S v_min v_max;

%-------ACTUATOR-----
m_actuator = 10000;    % weight of actuator
K = 14;             % bulk modulus

A1 = 0.000490864;   % Area 1 m^2
A2 = 0.000038485;   % Area 2 m^2

V01 = 0.00000687;      % Volume 1 m^3
V02 = 0.0000008274177;   % Volume 2 m^3


