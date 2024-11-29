clear all
close all

% main

% load parameters

load('p.mat', 'p')

time = [0 10];

% definition of only R1_0 as we need the initCond vector and the output
% vector to be the same length because of the ode function

y0 = [3];

% calculation using ODE function

[time, R1_ode] = ode45(@(t,initCond) model1(t,initCond,p), time, y0);

% calculation using Euler_method

% new timeRange needed to make sure R1_euler and time are the same length

[R1_euler, timeRange] = euler_ode_solv(time, 40, y0, p);

% plot

figure(1);
plot(time, R1_ode(:,1), "r-", timeRange, R1_euler(:,1), "b--" );
xlabel('Time')
ylabel('Gene Expression')
xlim([0 10])
ylim([0 20])
legend('R1 - ode45', 'R1 - euler');