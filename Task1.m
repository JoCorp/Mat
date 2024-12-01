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

% [R1_euler, timeRange] = euler_ode_solv(time, 40, y0, p); --> included in
% following test

% testing if higher N improve the result

figure(1)
subplot(2,1,1)
plot(time, R1_ode(:,1), "k-")
hold on

for i = 1:5
    [R1_euler, timeRange] = euler_ode_solv(time, (i*20), y0, p);
    plot(timeRange, R1_euler, '--')
end

xlabel('Time')
ylabel('Gene Expression')
xlim([0 10])
ylim([0 12])
legend('R1 - ode45', 'R1 - euler (N = 20)', 'R1 - euler (N = 40)', 'R1 - euler (N = 60)', 'R1 - euler (N = 80)', 'R1 - euler (N = 100)');

