%x0=[1; 1]; %��������� �����������
u10=1; i20=1;
syms u1s i2s; %������� ���������� ����������, ����� ��������� �����������
df1i1s = diff('u1s+1.4*(u1s/0.01)^(1/3)-0.6*i2s-20', u1s); 
df1i2s = diff('u1s+1.4*(u1s/0.01)^(1/3)-0.6*i2s-20', i2s);
%  1.4*(u1/m)^(1/3) -0.6*i2+u1-20
%  -0.6*(u1/m)^(1/3)+0.6*i2+U0*ln(i2/I0+1)
%2
df2i1s = diff('10*log(i2s/8+1)*i2s-0.6*(u1s/0.01)^(1/3)+0.6*i2s', u1s); 
df2i2s = diff('10*log(i2s/8+1)*i2s-0.6*(u1s/0.01)^(1/3)+0.6*i2s', i2s);

%������ 1 ��������, ����� �������� x
f0=[u10+1.4*(u10/0.01)^(1/3)-0.6*i20-20; 10*log(i20/8+1)*i20-0.6*(u10/0.01)^(1/3)+0.6*i20];
I1=[]; I2=[];
U1=[];
U2=[];

%���������� �������� �����������
df1i1= double(subs(subs(df1i1s, u1s, u10), i2s, i20));
df1u2=double(subs(subs(df1i2s, u1s, u10), i2s, i20));

df2i1= double(subs(subs(df2i1s, u1s, u10), i2s, i20));
df2u2=double(subs(subs(df2i2s, u1s, u10),  i2s, i20));


w=[df1i1 df1u2 ; df2i1 df2u2];


det(w) % ������������, �� ������ ���� ����� 0
x0=[u10; i20];
x = x0 - inv(w) * f0; % ������� ����� 1 ��������
%u1=0.01*x(1)^3;
i1=(x(1)/0.01)^(1/3);
%i2=8*(exp(1)^(x(1)/10));
u2=10*log(i20/8+1)*i20;
U1=[U1;x(1)]; I2=[I2;x(2)];I1=[I1;i1];U2=[U2;u2];
e = 0.001; %��������
k = 1;

%������ ��������� ��������

while ((abs(x(1) - x0(1)) > e) | (abs(x(2) - x0(2)) > e) ) %���� �������� �� ����� ���������� 
    x0(1) = x(1);
    x0(2) = x(2);
   f0=[x0(1)+1.4*(x0(1)/0.01)^(1/3)-0.6*x0(2)-20; 10*log(x0(2)/8+1)*x0(2)-0.6*(x0(1)/0.01)^(1/3)+0.6*x0(2)];
 df1i1= double(subs(subs(df1i1s, u1s, x0(1)), i2s, x0(2)));
df1u2=double(subs(subs(df1i2s, u1s, x0(1)), i2s, x0(2)));

df2i1= double(subs(subs(df2i1s, u1s, x0(1)), i2s, x0(2)));
df2u2=double(subs(subs(df2i2s, u1s, x0(1)),  i2s, x0(2)));  
    w=[df1i1 df1u2 ; df2i1 df2u2];
    det(w); % ������������
    x = x0 - inv(w) * f0; 
    i1=(x(1)/0.01)^(1/3);
%i2=8*(exp(1)^(x(1)/10));
u2=10*log(x(2)/8+1)*x(2);
U1=[U1;x(1)]; I2=[I2;x(2)];I1=[I1;i1];U2=[U2;u2];
  
    k = k + 1; 
    if ( k > 100)
       break;
    end;
end;

figure(1);
plot(U1,I1);
figure(2);
plot(U2,I2);
k

