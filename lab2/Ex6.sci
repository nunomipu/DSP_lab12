clf;
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y_add = x1 + x2;

subplot(3,1,1); plot2d3(n, x1); plot(n, x1, 'ro'); title("x1(n)"); xgrid();
subplot(3,1,2); plot2d3(n, x2); plot(n, x2, 'ro'); title("x2(n)"); xgrid();
subplot(3,1,3); plot2d3(n, y_add); plot(n, y_add, 'bo'); title("y_add(n) = x1(n) + x2(n)"); xgrid();
