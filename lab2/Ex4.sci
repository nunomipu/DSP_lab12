clf;
n = -5:5;
ur = n .* bool2s(n >= 0);
plot2d3(n, ur); 
plot(n, ur, 'ro');
title("Exercise 4: Unit Ramp Signal u_r(n)");
xlabel("n"); ylabel("Amplitude"); xgrid();
