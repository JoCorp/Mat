function [R, timeRange] = task2euler(time, N, y0, p)
    % Time step, Time range and matrix for results of R 
    deltaT = (time(2) - time(1)) / N; 
    timeRange = time(1):deltaT:time(end);
    R = zeros(N+1, 2);  

    % Initial condition
    R(1, :) = y0; 

    % Euler method loop
    for i = 1:N
        t = timeRange(i);  
        y = R(i, :)';      
        
        % Call for calcluated derivates using task2model function
        dR = task2model(t, y, p);
        
        % Update the solution using Euler's method
        R(i+1, :) = R(i, :) + deltaT * dR';  % Update R1 and R2 values
    end
end
