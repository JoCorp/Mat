function R1 = model1(t,initCond,p)

R1 = [0];

% values of R2 and u assigned directly in function

R2 = 1;
u = 1;

% work in progress here. I have to convert t to an integer

% conversion works but time is not a suitable index (49 elements, but time
% reaches max. value of 10

% if t < 2
    X = initCond(1);
%elseif t >= 2
%T = cast(t, "int8") - 1;
%X = R1(T);
%end

R1 = p.ks1 * (u/(1 + (R2/p.K2))) - p.k1 * X;

end