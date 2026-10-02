clf;
t = 0:0.0001:0.02;
xa = sin(480*%pi*t) + 3*sin(720*%pi*t);

Fs = 600; Ts = 1/Fs;
n = 0:(0.02*Fs);
xn = sin(0.8*%pi*n) + 3*sin(1.2*%pi*n);
ya = -2*sin(480*%pi*t);

subplot(3,1,1); plot(t, xa, 'k-'); title("Original analog signal xa(t)"); xgrid();
subplot(3,1,2); plot2d3(n*Ts, xn); plot(n*Ts, xn, 'ro'); title("Sampled signal x(n) at Fs=600Hz"); xgrid();
subplot(3,1,3); plot(t, ya, 'b-'); title("Reconstructed signal ya(t) (Aliased)"); xgrid();
