function R1 = model1(t,initCond,p)

R2 = initCond(2);
u = initCond(3);

% this is a very stupid way to solve the R1_0 problem. It would be much
% easier to use an additional value returned by the function R1. However
% I'm afraid it wouldn't work for the ODE function

if t == 0;
    R1_x = initCond(1);
else
    R1_x = R1(t-1,initCond,p);
end


R1 = p.ks1 * (u/(1 + (R2/p.K2))) - p.k1 * R1_x

end