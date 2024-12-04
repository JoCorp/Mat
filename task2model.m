function dR = task2model(t, y, p)
    
    % Extract R1 and R2 from the state variable vector

    R1 = y(1);
    R2 = y(2);
    y(1)= 3;
    y(2)= 0;

    % Constant variable 'u'

    u = 1; 

    % Differential equations for R1 and R2

    dR1 = p.ks1 .* (u / (1 + R2 / p.K2)^p.n) - p.k1 .* R1;  
    dR2 = p.ks2 .* u - p.k2 .* R2;

    % Results
    
    dR = [dR1; dR2];
end
