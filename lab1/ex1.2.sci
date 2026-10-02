clf; 

f=50; T=0.02; t= 0:0.0001:5*T; x_a = 3*sin(100 * %pi * t);
subplot(3,1,1); plot(t, x_a, 'b-');
title("Analog Signal x_a(t) = 3sin(100*pi*t) (5 periods)", "fontsize", 3);
xlabel("time (s)"); ylabel("amplitude"); xgrid();

Fs=300; Ts=1/Fs; n=0:30; 
x_n = 3*sin(100*%pi*n*Ts); 
subplot(3,1,2); plot2d3(n,x_n);
plot(n,x_n,'ro'); 
title("Discrete-time Signal x(n) with Fs=300Hz (5 periods)", "fontsize", 3);
xlabel("n (samples)"); ylabel("amplitude"); xgrid();

delta=0.1; xqn=floor(x_n/delta) * delta;
subplot(3,1,3);
plot2d3(n,xqn); 
plot(n,xqn, 'bo'); 
title("Quantized Signal xq(n) with Delta=0.1 (truncate method)", "fontsize", 3);
xlabel("n (samples)"); ylabel("amplitude"); xgrid();
