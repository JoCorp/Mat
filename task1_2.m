clear all;
close all;

% load parameters n, ks
load('p.mat', 'p');

% define time and initial conditions
time = [0 10];
y0 = [3];

p1 = 1:1:20;

for i = 1:length(p1);
    [time_ode{i}, R1_ode{i}] = ode45(@(t, y) submodel1(t, y, p, p1(i)), time, y0);
end
% calculation using ode45
% [time_ode, R1_ode] = ode45(@(t, y) submodel1(t, y, p, p1), time, y0);

% calculation using Euler's method
% [R1_euler, timeRange] = subtask1(time, 40, y0, p, p1);

% plot results
%figure(1);
%plot(time_ode, R1_ode(:,1), "r-", timeRange, R1_euler(:,1), "b--");
for i = 1:20
    figure(i);
    plot(time_ode{i}, R1_ode{i})
end
% xlabel('Time');
% ylabel('Gene Expression');
% xlim([0 10]);
% ylim([0 20]);
% legend('R1 - ode45', 'R1 - euler');



