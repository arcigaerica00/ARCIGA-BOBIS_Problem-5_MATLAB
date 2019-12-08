n=0:199;
x = input('Input a function, x(n): ');
for i=0:199 
    if i==0
        y(i+1)=-1.5*x(i+1)+2*x(i+2)-0.5*x(i+3);  
    elseif i>0 && i<=198 
        y(i+1)=0.5*x(i+2)-0.5*x(i);
    elseif i==199
        y(i+1)=1.5*x(i+1)-2*x(i)+0.5*x(i-1);
    end
end
plot(0:199,x,'-ok','linewidth',2,'markersize',1.5,'markerfacecolor','k')
hold on
grid on
plot(0:199,y,'-or','linewidth',2,'markersize',1.5,'markerfacecolor','r')
title 'Superimposed Graphs of x(n) & y(n)'
xlabel('Values of n')
ylabel('x(n) & y(n)')
legend('x(n)','y(n)')