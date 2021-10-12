function [ l ] = interpolka(A,x0, n, n1)
l=[1,n1];
for k=1:n1
    p=1;
    l(k)=A(2,1);
    rasn=A(2,:);
   for i=1:(n-1)
   p=p*(x0(k)-A(1,i)); 
   for j=1:(n-i)
      rasn(j)=(rasn(j+1)-rasn(j))/(A(1,j+i)-A(1,j));
   end;
   l(k)=l(k)+p*rasn(1);
   end;
end;
end

