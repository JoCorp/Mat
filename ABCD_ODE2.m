function y = ABCD_ODE2(t,initCond,p)

y = zeros(8,1);

a = initCond(1);
b = initCond(2);
c = initCond(3);
d = initCond(4);
e = initCond(5);
f = initCond(6);

i = 0;
IN1 = 0;
IN2 = 0;

if t >= 0 && t <= 2
        IN1 = 1;
        i = i+1;
else
    IN1 = 0;
    i = i+1;
end
    
if t >= 0.5 && t <= 2.5
        IN2 = 0.5;
     
else
    IN2 = 0;
  
end

IN1_val(i) = IN1
IN2_val(i) = IN2

y(1) = IN1 - a * (p.k2 + p.k1 * b);
y(2) = IN2 - b * (p.k3 + p.k1 * a);
y(3) = p.k1 * a * b - c * p.k4 - p.k6 * c * e;
y(4) = c * p.k4 + a * p.k2 - d * p.k5;
y(5) = b * p.k3 - p.k6 * c * e;
y(6) = p.k6 * c * e - f * p.k5;
y(7) = d * p.k5;
y(8) = f * p.k5;

end