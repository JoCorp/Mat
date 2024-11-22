close all
clear all

%% 

load('pEuler2.mat', 'p')

time = [0 10];

y0 = [0.5 0 0 0 0 0 0 0];

[time, y] = ode45(@(t,initCond) ABCD_ODE2(t,initCond,p), time, y0);

figure(1);
subplot(2,1,1)
plot(time, y(:,1), time, y(:,2), time, y(:,3), time, y(:,4), time, y(:,5),time, y(:,6));
xlim([0 10])
ylim([0 1])
legend('A', 'B', 'C', 'D', 'E', 'F');
subplot(2,1,2)
plot(time, y(:,7),time, y(:,8));
xlim([0 10])
ylim([0 10])
legend('OUT1', 'OUT2');

% e & f fehlen