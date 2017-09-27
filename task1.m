a = 1.1; 
b = 0.09;
xn=1.2; 
xk=2.2; 
dx=0.2;
X=[1.21,1.76,2.53,3.48,4.52]; 
X=sort(X);
x=xn:dx:xk;

function yres=yCalc(x,a,b)
  chisl = log10(x.^2 - 1);
  znam = log(a*x.^2 - b)/log(5);
  yres = chisl./znam;
end

y1 = yCalc(x,a,b);
y2 = yCalc(X,a,b);

plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'b-*','LineWidth',3)
title('First lab part B')


