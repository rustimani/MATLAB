%построение графика
%построение графика
y1 = ezplot('0.01*(x^3) + 1.4*x -0.6*y -20',[5, 10, -10 ,10]);
set(y1,'Color','b','LineWidth',2);
hold on;
y2 = ezplot('10*log(y/8 +1)-0.6*x+0.6*y',[5, 10, -10, 10]);
set(y2,'Color','b','LineWidth',2);
grid on;
%расчет решения
[xr, fr, ex] = fsolve(@fun,[3.0, 1.0],optimset('TolX',1.0e-2))
plot(xr(1), xr(2), '*r');

xlim([0 10]);
hold on;
