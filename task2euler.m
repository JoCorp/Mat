function [R, timeRange] = task2euler(time, N, y0, p)
    
    % Time step, Time range and matrix for results of R 
    deltaT = (time(2) - time(1))/N; % this is scalar
    timeRange = time(1):deltaT:time(end);
    R = zeros(N+1, 2);  
    
    % Initial condition
    R(1, :) = y0; 

    % Euler method for loop
    for i = 1:N
        t = timeRange(i);  
        y = R(i, :);      
        
        % Call for calcluated derivates using task2model function
        dR = task2model(t, y, p);
        
        %Solving the differential equation using Euler's method
        R1 = R(i, 1) +  deltaT * dR(1);
        R2 = R(i, 2) +  deltaT * dR(2);
        %dR gives a column vector and we extract the value of R1and R2
        R(i+1, 1) = R1; 
        R(i+1, 2) = R2;
    end
end
