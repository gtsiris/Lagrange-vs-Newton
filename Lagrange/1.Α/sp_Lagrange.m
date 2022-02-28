%Georgios Tsiris, 1115201700173]
clear; clc;
% Ypologismos toy polionimou p se symboliki morfi me ti methodo Lagrange

xp=[0 pi/4 pi/2];
yp=[sin(0) sin(pi/4) sin(pi/2)];

N=length(xp);
M=length(yp);
if N~=M
error('myApp:argChk', 'Ïé ðßíáêåò x êáé y äåí Ý÷ïõí ßäéá äéÜóôáóç')
end
syms x
for i=1:N
    L(i)=1+0*x;
    for j=1:N
        if i~=j
            L(i)=L(i)*(x-xp(j))/(xp(i)-xp(j));
        end
    end
    %disp('L(i)'); disp(L(i));
disp(sprintf('L(%d) = %s',i-1,char(expand(L(i))))) % ta polionima Li(x)
end
p=0*x;
for i=1:N
p=p+L(i)*yp(i);
end
disp('p'); disp(p);
p=expand(p); % to teliko polionimo
disp('p'); disp(p);
