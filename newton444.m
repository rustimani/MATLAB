function nwt = newton(x,y,e,F0,F1,dF0x,dF0y,dF1x,dF1y)

for i = 1:1000000

F=[F0(x,y); F1(x,y)];

dF=[dF0x(x,y) dF0y(x,y); dF1x(x,y) dF1y(x,y)];

Z = [x;y] - dF^(-1)*F;

b = sqrt((x-Z(1))^2+(y-Z(2))^2);

if b > e

x = Z(1);

y = Z(2);

else break;

end

end

disp('Количество итераций'); disp(i);

nwt = Z;