clear all;
close all;

% Load parameters from 'p.mat'
load('p.mat', 'p');

% Time range 
time = [0 10];

% Initial conditions for R1 and R2
y0 = [3, 0];  
k2 = 1:1:10;

for i = 1:length(k2)
    p.k2 = k2(i);

    % Calculation using ODE function

    [time_odek2{i}, Rk2{i}] = ode45(@(t, y) task2model(t, y, p), time, y0);

    % Extract R1 and R2 from the ODE solution 

    R1_odek2{i} = Rk2{i}(:, 1);
    R2_odek2{i} = Rk2{i}(:, 2);
    

    % Calculation using Euler method (task2euler)
    
    [R{i}, timeRangek2{i}] = task2euler(time, 40, y0, p);

    % Extract R2 from Euler method results (the second column)
    R1_eulerk2{i} = R{i}(:,1);
    R2_eulerk2{i} = R{i}(:,2);

end

% creating a dynamic plot with dynamic labels

figure(4)
subplot(2,1,1)
hold on
for i = 1:length(k2);
    plot(time_odek2{i}, R2_odek2{i}, 'LineStyle', '-', ...
        'DisplayName', sprintf('R2, k2 = %d', k2(i)))
     plot(time_odek2{i}, R1_odek2{i}, 'LineStyle', '--', ...
         'DisplayName', sprintf('R1, k2 = %d', k2(i)))
end
legend('Location', 'eastoutside');
xlabel('Time');
ylabel('Gene Expression');
title('ode45 calculation for different k2')
subplot(2,1,2)
hold on
for i = 1:length(k2);
    plot(timeRangek2{i}, R2_eulerk2{i},'LineStyle', '-', ...
        'DisplayName', sprintf('R2, k2 = %d', k2(i)));
    plot(timeRangek2{i}, R1_eulerk2{i}, 'LineStyle', '--', ...
         'DisplayName', sprintf('R1, k2 = %d', k2(i)))
    
end
legend('Location', 'eastoutside');
xlabel('Time');
ylabel('Gene Expression');
xlim([0 10]);
ylim([0 20]);
title('Task 2.2:Influence of parameter k2 ');
