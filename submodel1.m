function dR1 = submodel1(t, y, p, p1)
    % initial value of R1 is used directly for initiation
    R1 = y(1);

     
    % define input function
    u = @(t) sin(p1 .* t) + 1;
   

    
    % constant value for R2
    R2 = 1;
    % calculate dR1
    dR1 = p.ks1 .* (u(t) / (1 + (R2 / p.K2)^p.n)) - p.k1 * R1;
    dR1 = [dR1];

end