clear all;
close all;

% load parameters n, ks
load('p.mat', 'p');

% define time and initial conditions
time = [0 10];
y0 = [3];

p1 = 0.1:0.1:20;

% calculation using ode45

for i = 1:length(p1);
    [time_ode{i}, R1_ode{i}] = ode45(@(t, y) submodel1(t, y, p, p1(i)), time, y0);
end

% calculation using Euler's method

for i = 1:length(p1);
    [R1_euler{i}, timeRange{i}] = subtask1(time, 40, y0, p, p1(i));
end

% creating a dynamic plot with dynamic label

figure(1)
set(gcf, 'Position', [100, 100, 1000, 600])
subplot(2,1,1)
for i = 1:length(p1)/10;
    plot(time_ode{i*10}, R1_ode{i*10});
    hold on
    label_ode{i} = sprintf('p1 = %d', p1(i*10));
end
legend(label_ode, 'Location', 'eastoutside');
xlabel('Time');
ylabel('Gene Expression');
title('ode45 calculation for different p1')

subplot(2,1,2)
for i = 1:length(p1)/10;
    plot(timeRange{i*10}, R1_euler{i*10});
    hold on
    label_euler{i} = sprintf('p1 = %d', p1(i*10));
end
legend(label_euler, 'Location', 'eastoutside');
xlabel('Time');
ylabel('Gene Expression');
title('Euler calculation for different p1')





