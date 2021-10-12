x=randn(1,1000);
a=0.85;
sigma=exp(1)*(exp(1)-1)*1;
y=filter(sigma*sqrt(1-a.^2),[1-a],x);
R=xcorr(y);
figure(1);
subplot(2,1,1); plot(y(1:500));
grid on;
subplot(2,1,2); plot(R(900:1100));
grid on;