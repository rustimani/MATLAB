N=11;
M=1000;
P=[];
x=0;
T=[];
min=0;

for i=1:N
    x=x+0.09;
    P(i)=x;
end

T1=zeros(N,M);


  for j=1:M
      MSG=[];
      for k=1:N
          l=rand(1);
          if l<=P(k)
              MSG(k)=1;
          else
              MSG(k)=0;
          end
      end
      s=sum(MSG);
      y=0;
      while y<(s-1)
          for k=1:N
             if MSG(k)==1
                 T1(j,k)=y+min;
                 y=y+1;
             else T1(j,k)=0;
             end
          end
      end
      min=min+s;
  end
 for i=1:N 
  P1=sum(T1(:,i));
  T(i)=sum(T1(:,i))/M;
end                
 
plot(P,T);