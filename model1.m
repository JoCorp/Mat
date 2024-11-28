function R1 = model1(t,initCond,p)

R1 = [initCond(1)];
R2 = 1;
u = 1;

% work in progress here. I have to convert t to an integer

T = cast(t, int) - 1

R1 = p.ks1 * (u/(1 + (R2/p.K2))) - p.k1 * R1(T)

end