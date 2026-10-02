clf;
n = -5:5;
msignal = bool2s(n == 0);
plot2d3(n, msignal); 
plot(n, msignal, 'ro');
title("Exercise 3: Unit Impulse Signal \delta(n)");
xlabel("n"); ylabel("Amplitude"); xgrid();
