function dR_task3_2 = task3_2model(t, y, p)
   % Input
    R1 = y(1);
    R2 = y(2);
  
    P1 = 0.2;
    P2 = 1;

    % Sinusoidal input u(t) 
    u_t3 = P2 + sin(P1.*t);

    % Differential equations for R1 and R2
    dR1_task3_2 = p.ks1.*u_t3 / (1 + (R2/p.K2)^p.n) - p.k1.*R1;
    dR2_task3_2 = p.ks2.*u_t3 / (1 + (R1/p.K1)^p.nstar) - p.k2.*R2;

    % Return the results as a column vector
    dR_task3_2 = [dR1_task3_2; dR2_task3_2];
end