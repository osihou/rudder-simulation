% RUDDER SIMULATION
%
%

% Add to execution path
addpath('geometry') 
addpath('loads')
addpath('actuator') 
savepath pathdef.m

% Clear variables and a screen.
clear; close all; clc;

%------GEOMETRY-----
%SCA=0.5808;        % m
yr = 0.02323;        % m
xr = 0.04981;        % m
delta0 = 25.1;        % deg

x_min=-0.00515061;  % m
x_max=0.0146;       % m

x =(x_min:0.000001:x_max);

delta = geometry(yr, xr, x, delta0);

clear yr xr delta0 x_min x_max;

%------LOADS-------

rho = 1.2255;   % kg/m^3
S =  1.965;      % m^2

v_min = 100;    % m/s
v_max = 300;    % m/s

v = linspace(v_min, v_max, 100);

Q =  actuator_load(rho, S, delta, v);

clear rho S v_min v_max;

%-------ACTUATOR-----

m_actuator = 1;    % weight of actuator
K = 14000000000;             % bulk modulus

A1 = 0.000490864;   % Area 1 m^2
A2 = 0.000038485;   % Area 2 m^2

V01 = 0.00000687;      % Volume 1 m^3
V02 = 0.0000008274177;   % Volume 2 m^3

%--------PID--------

P = 0.015;      % Proportional
I = 0;          % Integral
D = 0;          % Derivative

N = 1;          % Filter coefficient

%-------SENSOR------

sgain = 0.01;
smean = 0;
svariance = 1;
sseed = 0;
ssample_time = 0.001;

