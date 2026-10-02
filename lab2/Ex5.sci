clf;
n = -1:1;
x = [1, 3, -2];        // x(n)
xf = [-2, 3, 1];       // x(-n)

xe = 0.5 * (x + xf);   // even component
xo = 0.5 * (x - xf);   // odđ component

subplot(3,1,1); plot2d3(n, x); plot(n, x, 'ro');
title("Original signal x(n)"); xlabel("n"); xgrid();

subplot(3,1,2); plot2d3(n, xe); plot(n, xe, 'go');
title("Even component xe(n)"); xlabel("n"); xgrid();

subplot(3,1,3); plot2d3(n, xo); plot(n, xo, 'bo');
title("Odd component xo(n)"); xlabel("n"); xgrid();
