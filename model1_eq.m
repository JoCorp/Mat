function dR_eq = model1_eq(t,initCond,p)


% initial Value of R1 is used directly for initiation instead of zeros
% function. This way R1(end) can be used in function

R1 = [initCond(1)];


% values of R2 and u assigned directly in function. Having them as initCond
% would increase the array length of the output of the ODE function

R2 = 1;
u = 1;

% function to calculate R1

R1_2 = p.k1 * R1(end);
R1 = p.ks1 * (u/(1 + ((R2/p.K2)^p.n))) - R1_2;

dR_eq = [R1; R1_2];
end