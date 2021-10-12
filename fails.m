x=[1.2, 1.5, 1.7, 2.0, 2.4, 2.6, 3.1, 3.3, 3.5, 3.9];
y=[5.273, 5.541, 5.812, 6.086, 6.358, 5.624, 6.897, 7.162, 7.433, 7.708];
x0=[1.25, 3.55];
A=[x;y];
rasn=y;
p=1;
y0=y(1);
n=10;
for i=1:(n-1)
   kk=x0(1)-x(i);
   p=p*kk;
   fprintf('%5.3f\n ',kk);
   for j=1:(n-i)
      rasn(j)=(rasn(j+1)-rasn(j))/(A(1,j+i)-A(1,j));
      %fprintf('%s %5.3f', ' ', rasn(j)); 
   end;
   %fprintf('%s\n', ' ');
   y0=y0+p*rasn(1);
   %fprintf('%s = %5.3f\n', 'yo=', y0);
end;

% y1=y(1);
% p=1;
% rasn=y;
% for i=1:(n-1)
%    kk=x0(2)-x(i);
%    p=p*kk;
%    %fprintf('%5.3f\n ',p);
%    for j=1:(n-i)
%       rasn(j)=(rasn(j+1)-rasn(j))/(A(1,j+i)-A(1,j));
%       %fprintf('%s %5.3f', ' ', rasn(j)); 
%    end;
%    %fprintf('%s\n', ' ');
%    y1=y1+p*rasn(1);
%    %fprintf('%s = %5.3f\n', 'yo=', y0);
% end;
% xnew=[1.2, 1.25, 1.5, 1.7, 2.0, 2.4, 2.6, 3.1, 3.3, 3.5, 3.55, 3.9];
% ynew=[5.273, y0, 5.541, 5.812, 6.086, 6.358, 5.624, 6.897, 7.162, 7.433, y1, 7.708];
% plot(xnew,ynew);

%fprintf('%5.3f', y0);