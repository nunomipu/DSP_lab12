clf;
n = 0:50;
t = 0:0.1:20;

subplot(5,1,1); plot(t, 3*cos(5*t + %pi/6), 'b-'); title("(a) Analog xa(t) -> Periodic"); xgrid();
subplot(5,1,2); plot2d3(n, 3*cos(5*n + %pi/6)); title("(b) Discrete x(n) -> Aperiodic"); xgrid();
xc = 2*exp(%i*(n/6 - %pi));
subplot(5,1,3); plot2d3(n, real(xc)); title("(c) Real part of x(n) -> Aperiodic"); xgrid();
subplot(5,1,4); plot2d3(n, cos(n/8) .* cos(%pi*n/8)); title("(d) x(n) -> Aperiodic"); xgrid();
xe = cos(%pi*n/2) - sin(%pi*n/8) + 3*cos(%pi*n/4 + %pi/3);
subplot(5,1,5); plot2d3(n, xe); title("(e) x(n) -> Periodic (N=16)"); xgrid();
