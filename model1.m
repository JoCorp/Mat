function R1 = model1(t,initCond,p)

R1 = [initCond(1)];

% values of R2 and u assigned directly in function

R2 = 1;
u = 1;

% work in progress here. I have to convert t to an integer

% conversion works but time is not a suitable index (49 elements, but time
% reaches max. value of 10

R1 = p.ks1 * (u/(1 + (R2/p.K2))) - p.k1 * R1(end);

end