function dR_task3 = task3model(t, y, p)
    
    % Extract R1 and R2 from the state variable vector

    R1 = y(1);
    R2 = y(2);

    % Constant variable 'u'

    u = 1; 
    u2 = 1;

    % Differential equations for R1 and R2

    dR1_task3 = p.ks1 .* u / (1 + (R2/p.K2)^p.n) - p.k1 .* R1;  
    dR2_task3 = p.ks2 .* u2 / (1 + (R1/p.K1)^p.nstar) - p.k2 .* R2;

    % Results
    
    dR_task3 = [dR1_task3; dR2_task3];

end
