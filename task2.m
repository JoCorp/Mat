clear all;
close all;

% Load parameters from 'p.mat'
load('p.mat', 'p');

% Time range 
time = [0 10];

% Initial conditions for R1 and R2
y0 = [3, 0];  

% Calculation using ODE function 
[time_ode, R] = ode45(@(t, y) task2model(t, y, p), time, y0);

% Extract R2 from the ODE solution 
R2_ode = R(:, 2);

% Calculation using Euler method (task2euler)
[R_euler, timeRange] = task2euler(time, 40, y0, p);

% Extract R2 from Euler method results (the second column)
R2_euler = R_euler(:, 2);

% Plot the results
figure(1);
plot(time_ode, R2_ode, 'r-', timeRange, R2_euler, 'b--');
xlabel('Time');
ylabel('Gene Expression');
xlim([0 10]);
ylim([0 20]);
legend('R - ode45', 'R - Euler');
title('Comparison of R: ODE45 vs Euler Method');
