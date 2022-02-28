%Georgios Tsiris, 1115201700173
clear;
clc;
% Σημεία (xi,yi)
x=[-1 0 1];
y=[exp(-1) exp(0) exp(1)];
n=newtonPOLY(x,y); % εύρεση πολυωνύμου με την παρεμβολή Newton
xx=[-1:0.02:1]; % πεδίο ορισμού του x
yy=polyval(n,xx); % τιμή y για κάθε x που ανήκει στο xx
clf
subplot(2,1,1)
hold on
plot(xx,yy,'b-',x,y,'*') % γραφική παράσταση πολυωνύμου
plot(xx, exp(xx))
title('Comparison p(x) Vs f(x)')
legend('p(x)', '', 'f(x)')
hold off
subplot(2,1,2)
plot(xx, exp(xx)-yy)
xlabel('x')
ylabel('ε(x)')
title('Behaviour ε(x) = f(x) - p(x)')
