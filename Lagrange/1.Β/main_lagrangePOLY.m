%Georgios Tsiris, 1115201700173
clear; clc;
 
% Δοθέντα σημεία
x=[0 pi/4 pi/2];
y=[sin(0) sin(pi/4) sin(pi/2)];
 
l=lagrangePOLY(x,y) % Εύρεση του πολυωνύμου παρεμβολής
xx=[0:0.02:pi/2];
yy=polyval(l,xx); % Εύρεση της τιμής του y όταν το  x ανήκει στο [0,pi/2]
clf
subplot(2,1,1)
hold on
plot(xx,yy,'b',x,y,'*') % γραφική παράσταση του πολυωνύμου παρεμβολής
plot(xx, sin(xx))
title('Comparison p(x) Vs f(x)')
legend('p(x)', '', 'f(x)')
hold off
subplot(2,1,2)
plot(xx, sin(xx)-yy)
xlabel('x')
ylabel('ε(x)')
title('Behaviour ε(x) = f(x) - p(x)')
