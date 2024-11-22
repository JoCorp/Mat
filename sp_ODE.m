function y = sp_ODE(t,initCond,sp)

y = zeros(10,1);

Sox9 = initCond(1);
mSox9 = initCond(2);
Sox10 = initCond(3);
mSox10 = initCond(4);
Tcf1 = initCond(5);
mTcf1 = initCond(6);
miR155 = initCond(7);
miR335 = initCond(8);
miR338 = initCond(9);

i = 0;
IN = 0;

    if t >= 0.4 && t <= 3.9
        IN = 1;
        i = i+1;
    else
        IN = 0;
        i = i+1;
    end

IN_val(i) = IN

y(1) = mSox9 * sp.k4 - miR338 * sp.k7 - miR335 * sp.k6;
y(2) = mSox9 * sp.at2;
y(3) = mSox10 * sp.k2 - Sox10 * sp.k5 - Sox10 * Tcf1 * sp.k5 - Sox10 * sp.k3 - Sox10 * sp.k3 - Sox10 * sp.k3 - Sox10 * sp.k8;
y(4) = IN * sp.k1 + mSox10 * sp.at1 - mSox10 * sp.k2;
y(5) = mTcf1 * sp.k4 - Tcf1 * Sox10 * sp.k5 - miR338 * sp.k7 - miR155 * sp.k6;
y(6) = Sox10 * sp.k8 + mTcf1 * sp.at3 - mTcf1 * sp.k4;
y(7) = Sox10 * sp.k3 - miR155 * sp.k6;
y(8) = Sox10 * sp.k3 - miR335 * sp.k6;
y(9) = Sox10 * sp.k3 - miR338 * sp.k7 - miR338 * sp.k7;
y(10) = Sox9 * sp.k5 + Sox10 * sp.k5 + Sox10 * Tcf1 * sp.k5;

end