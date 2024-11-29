function [R1, timeRange] = euler_ode_solv(time, N, initCond,p)

% setting parameters and vectors

deltaT = (time(end) - time(1))/N;
timeRange = time(1):deltaT:time(end);

R1 = zeros(length(timeRange),1);
R1(1) = initCond(1);


% calculation using euler

for i = 2:length(timeRange)
    % calculation of R1 change in one time step
    dR1 = model1(timeRange(i),R1(i-1),p);
    % addition of dR1/deltaT (fraction of a time step)
    R1(i) = R1(i-1) + dR1*deltaT;
end

end