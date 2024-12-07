function [R_task3, timeRange] = task3euler(time, N, y0, p)
    
    % Time step, Time range and matrix for results of R 
    deltaT = (time(2) - time(1))/N; % this is scalar approx 0.3 step
    timeRange = time(1):deltaT:time(end); 
    R_task3 = zeros(N+1, 2);  
    
    % Initial condition
    R_task3(1, :) = y0; 

    % Euler method for loop
    for i = 1:N
        t = timeRange(i);  
        y = R_task3(i, :);      
        
        % Call for calcluated derivates using task2model function
        dR_task3 = task2model(t, y, p);
        
        %Solving the differential equation using Euler's method
        R1_3 = R_task3(i, 1) +  deltaT * dR_task3(1);
        R2_3 = R_task3(i, 2) +  deltaT * dR_task3(2);
        %dR gives a column vector and we extract the value of R1and R2
        R_task3(i+1, 1) = R1_3; 
        R_task3(i+1, 2) = R2_3;
    end
end
