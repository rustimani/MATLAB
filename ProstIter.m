i10 = 2.0; %����� ���������� ����������
i20 = 2.0; %������� �� �� ��������� �����������
i2 = (0.01*(i10^3)+1.4*i10-20)/0.6;
i1 = (10*log(i20/8 +1)+0.6*i20)/0.6;


u1=0.01*(i1^3);
u2=10*log(i2/8+1);
e = 0.01; %��������
k = 0; %������� ��������

while or((abs(i1 - i10 ) > e), (abs(i2 - i20) > e)) %���� �������� �� ����� ���������� 
if i1>0
i10 = i1;
end
if i2>0
i20 = i2;
end
i2 = (0.01*(i10^3)+1.4*i10-20)/0.6
i1 = (10*log(i20/8 +1)+0.6*i20)/0.6

u1=0.01*(i1^3)
u2=10*log(i2/8+1)
k = k + 1;
end;
    %�����
u1=0.01*(i1^3);
u2=10*log(i2/8+1);
disp('i1=');
disp(i1)
u1
disp('i2=');
disp(i2)
u2
k

%f1 = 0.5 - cos(x-1) - y 
%f2 = cos(y) + 3 - x