function y = ABCD_ODE2(t,initCond,p, x, z)

%test

y = zeros(8,1);

a = initCond(1);
b = initCond(2);
c = initCond(3);
d = initCond(4);
e = initCond(5);
f = initCond(6);

y(1) = 1 - a * (p.k2 + p.k1 * b);
y(2) = 0.5 - b * (p.k3 + p.k1 * a);
y(3) = p.k1 * a * b - c * p.k4 - p.k6 * c * e;
y(4) = c * p.k4 + a * p.k2 - d * p.k5;
y(5) = b * p.k3 - p.k6 * c * e;
y(6) = p.k6 * c * e - f * p.k5;
y(7) = d * p.k5;
y(8) = f * p.k5;

end