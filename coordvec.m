function [ x ] = coordvec(n)
x=[2,n];
x(1,1)=input('������� ���������� � ������ �����');
while ~isreal(x(1,1))||isnan(x(1,1))||~isscalar(x(1,1))
     disp('�������� �� ������������� ����������� - ��� �����');
     x(1,1)=input('������� ���������� x  ��������� ����� ');
 end;
x(2,1)=input('������� ���������� � ������ �����');
while ~isreal(x(2,1))||isnan(x(2,1))||~isscalar(x(2,1))
     disp('�������� �� ������������� ����������� - ��� �����');
     x(2,1)=input('������� ���������� x  ��������� ����� ');
 end;
for i=2:n
   x(1,i)=input('������� ���������� x  ��������� ����� '); 
while ~isreal(x(1,i))||isnan(x(1,i))||~isscalar(x(1,i))||x(1,i)<=x(1,i-1)
     disp('�������� �� ������������� ����������� - ��� �����');
     x(1,i)=input('������� ���������� x  ��������� ����� ');
 end;
    x(2,i)=input('������� ���������� y  ��������� ����� '); 
while ~isreal(x(2,i))||isnan(x(2,i))||~isscalar(x(2,i))
     disp('�������� �� ������������� ����������� - ��� �����');
     x(2,i)=input('������� ���������� y  ��������� ����� ');
 end;
end;
end

