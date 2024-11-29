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

[time, R1] = ode45(@(t,initCond) model1(t,initCond,p), time, y0);

% plot

figure(1);
plot(time, R1(:,1), "r-" );
xlabel('Time')
ylabel('Gene Expression')
xlim([0 10])
ylim([0 20])
legend('R1');