N=11;
M=1000;
P=[];
x=0;
T=zeros(1,N);
H=zeros(1,N);
T1=[];

for i=1:N
    x=x+0.09;
    P(i)=x;
end

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
    T=T+MSG;
     l=1
     if sum(MSG)>0
         while (MSG(l)==0)
             l=l+1;
        end
        MSG(l)=0;
     end
     H=H+MSG;
     
  end
 for i=1:N 
  T1(i)=H(i)/T(i);
end                
 
plot(P,T1);