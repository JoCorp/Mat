
% Calculation using Euler method (task3euler)

[R_euler_3, timeRange3] = task3euler(timeR3, 40, y0_3, p);

% Extract R1 and R2 from Euler method results 
R1_euler_3 = R_euler_3(:, 1);
R2_euler_3 = R_euler_3(:, 2);

hold on
plot(timeRange3, R1_euler_3, 'r-', timeRange3, R2_euler_3, 'b');