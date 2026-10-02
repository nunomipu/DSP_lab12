clf;
F0 = 50; Tp = 1/F0;
t = 0:0.0001:0.1;
xa = sin(2*%pi*F0*t);

Fs1 = 300; Ts1 = 1/Fs1;
n1 = 0:30;
x1 = sin(2*%pi*F0*n1*Ts1);

Fs2 = 50 * %pi; Ts2 = 1/Fs2;
n2 = 0:30;
x2 = sin(2*%pi*F0*n2*Ts2);

subplot(3,1,1); plot(t, xa, 'k-'); title("Original Analog signal xa(t)"); xgrid();
subplot(3,1,2); plot2d3(n1, x1); plot(n1, x1, 'ro'); title("Sampled at Fs = 300Hz (rational) -> Periodic"); xgrid();
subplot(3,1,3); plot2d3(n2, x2); plot(n2, x2, 'bo'); title("Sampled at Fs = 50*pi Hz (irrational) -> Aperiodic"); xgrid();
