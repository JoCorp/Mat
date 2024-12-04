function R1Eq = equilibriumCalc(t,initCond,p)

R1 = [initCond(1)];

% values of R2 and u assigned directly in function. Having them as initCond
% would increase the array length of the output of the ODE function

R2 = 1;
u = 1;

% function to calculate R1

R1Eq = (p.ks1 * (u/(1 + ((R2/p.K2)^p.n))))/(p.k1);

end