%% Task 3.1.
clc, clearvars
% Time range 
load('p.mat', 'p')

timeR3 = [0 10];

% Initial conditions for R1 and R2

y0_3 = [3, 0];  

% Calculation using ODE function 

[time_odeR3, R_task3] = ode45(@(t, y) task3model(t, y, p), timeR3, y0_3);


% Extract R1 and R2 from the ODE solution 
R1_ode_3 = R_task3(:, 1);
R2_ode_3 = R_task3(:, 2);


% Plot the results

figure(4);
plot(time_odeR3, R1_ode_3, 'r-', time_odeR3, R2_ode_3, 'b');
xlabel('Time');
ylabel('Gene Expression');
xlim([0 10]);
ylim([0 20]);
legend('R1', 'R2');
title('Mutual Repression of R1 and R2');


figure(5);
hold on
for i = 1:10;
    y0_3 = [3, i]; 
    [time_odeR3, R_task3] = ode45(@(t, y) task3model(t, y, p), timeR3, y0_3);
    R1_ode_3 = R_task3(:, 1);
    R2_ode_3 = R_task3(:, 2);
    plot(R1_ode_3,R2_ode_3);
end
xlabel('Gene Expression R1');
ylabel('Gene Expression R2');
% xlim([0 1000]);
% ylim([0 1000]);
% legend('R1', 'R2');
title('Toggle Switch');

%% Task 3.2
clc, clearvars
load('p.mat', 'p'); 

% Time range
timeR3 = [0 10];

% Initial conditions for R1 and R2
y0_3 = [3, 0];  

% Sinusoidal input parameters
P1 = 5;
P2 = 7;

% Solve the ODE using ode45
[time_odeR3, R_task3_2] = ode45(@(t, y) task4model(t, y, p), timeR3, y0_3);

% Extract R1 and R2 from the ODE solution
R1_ode_3_2 = R_task3_2(:, 1);
R2_ode_3_2 = R_task3_2(:, 2);

% Plot the results
figure(4);
plot(time_odeR3, R1_ode_3_2, 'r-', time_odeR3, R2_ode_3_2, 'b');
xlabel('Time');
ylabel('Gene Expression');
xlim([0 10]);
ylim([0 20]);
legend('R1', 'R2');
title('Mutual Repression of R1 and R2 with Sinusoidal Input');