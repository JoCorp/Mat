function [R1, timeRange] = subtask1(time, N, y, p, p1)
    % Task 1.2: with variable u(t) function defined
    u = @(t) sin(p1 .* t) + 1;
    % Defining time range for the for loop and time step
    deltaT = (time(end) - time(1)) / N;
    timeRange = time(1):deltaT:time(end);
    % Defining R1 and initial value of R1
    R1 = zeros(length(timeRange), 1);
    R1(1) = y(1);
    % calculation using Euler's method
    for i = 2:length(timeRange)
        dR1 = submodel1(timeRange(i), R1(i-1), p, p1);
        R1(i) = R1(i-1) + dR1 * deltaT;
    end
    dR1 = [dR1];
end