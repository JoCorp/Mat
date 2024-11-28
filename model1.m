function R1 = model1(t,initCond,p)

R2 = initCond(2);
u = initCond(3);

if t == 0;
    R1_x = initCond(1);
else
    R1_x = R1(t-1,initCond,p);
end


R1 = p.ks1 * (u/(1 + (R2/p.K2))) - p.k1 * R1_x

end