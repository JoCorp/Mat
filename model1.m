function R1 = model1(t,initCond,p)

% initial Value of R1 is used directly for initiation instead of zeros
% function. This way R1(end) can be used in function

R1 = [initCond(1)];

% values of R2 and u assigned directly in function. Having them as initCond
% would increase the array length of the output of the ODE function

R2 = 1;
u = 1;

% function to calculate R1

R1 = p.ks1 * (u/(1 + ((R2/p.K2)^p.n))) - p.k1 * R1(end);

end