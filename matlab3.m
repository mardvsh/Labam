x=-10:0.1:10;
f1= x .* sin(x);
f2= cos(x) + x.^2;
f3= cos(x).^2;
x1=-15:0.5:0;
x2=1:0.5:10;
y1=-2*x + (x)/(3+x);
y2=(abs(x)).^(1.0/3.0);
 
figure (1)
plot(x,f1,'y--',x,f2,'g:',x,f3,'r') 
title('Графики в одном окне') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f1(x)=x.*sin(x)','f2(x)=cos(x)+x.^2','f3(x)=cos(x).^2','Location','northwest') 
grid on 
 
figure (2)
s(1)=subplot(5,1,1); 
plot(x,f1) 
title(s(1),'График первый') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f1(x)= x.*sin(x)','Location','southeast') 
grid on 
 
s(2)=subplot(5,1,2); 
plot(x,f2) 
title(s(2),'График второй') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f2(x)= cos(x) + x.^2','Location','southeast') 
grid on 
 
s(3)=subplot(5,1,3); 
plot(x,f3) 
title(s(3),'График третий') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f3(x)= cos(x).^2','Location','southeast') 
grid on 
 
figure (3)
plot (x,f1) 
title('График первый') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f1(x)= x .* sin(x)','Location','southeast') 
legend('boxoff') 
grid on 
 
figure (4)
plot (x,f2) 
title('График второй') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f2(x)= cos(x) + x.^2','Location','southeast') 
legend('boxoff') 
grid on 
 
figure (5)
plot (x,f3) 
title('График третий') 
ylabel('Ось Y') 
xlabel('Ось X') 
legend('f3(x)= cos(x).^2','Location','southeast') 
legend('boxoff') 
grid on
 
x1=-10:0.1:10;
y1=(abs(x)).^(1.0/3.0).*(x1<=0);
y2=-2*x + (x)/(3+x).*(x1>0);
y3=y1+y2
 
figure (6)
s(4)=subplot(2,1,1);
plot(x1,y3)
title('Графики в одном окне Y')
ylabel('y')
xlabel('x')
legend('y1=(abs(x)).^(1.0/3.0)','y2=-2*x + (x)/(3+x)', 'Location', 'northwest')
grid on
s(5)=subplot(2,1,2)
for i=1:length(x1)
if x1(i)<=0
y1=(abs(x)).^(1.0/3.0);
else
y2=-2*x + (x)/(3+x);
end
end
plot(x1, y3)
grid on



