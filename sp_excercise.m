clear all
close all

%% main

% load parameters

load('sp.mat', 'sp')

time = [0 10];

y0 = [0 1 0 0.5 0 0 0 0 0 0];

% ODE function

[time, y] = ode45(@(t,initCond) sp_ODE(t,initCond,sp), time, y0);

% plot

figure(1);
subplot(2,1,1)
plot(time, y(:,1), time, y(:,2), time, y(:,3), time, y(:,4), time, y(:,5), time, y(:,6), time, y(:,7), time, y(:,8), time, y(:,9));
xlim([0 10])
ylim([0 10])
legend('Sox9', 'mSox9', 'Sox10', 'mSox10', 'Tcf1', 'mTcf1', 'miR155', 'miR335', 'miR338');
subplot(2,1,2)
plot(time, y(:,10));
xlim([0 10])
ylim([0 10])
legend('OUT');

% strange behaviour of time (gets lower multiple times)