%Georgios Tsiris, 1115201700173]
clear; clc;
% Ypologismos toy polionimou p se symboliki morfi me ti methodo newton
% diirimenon diaforon
xp=[-1 0 1]; % times eisodou gia to x 
yp=[exp(-1) exp(0) exp(1)]; % times eisodou gia to y
N=length(xp);
M=length(yp);
if N~=M
error('myApp:argChk', 'Ïé ðßíáêåò x êáé y äåí Ý÷ïõí ßäéá äéÜóôáóç')
end
syms x
for i=1:N
    dy(i,1)=yp(i);
end
for j=2:N
    for i=1:N-j+1
        dy(i,j)=(dy(i+1,j-1)-dy(i,j-1))/(xp(i+j-1)-xp(i));
    end
end
disp('dy');disp(dy);
L=1;
p=dy(1,1);
% disp('p');disp(p);
for j=2:N
    L=L*(x-xp(j-1));
    p=p+dy(1,j)*L;
    disp('p');disp(p);
end
p=expand(p);
disp('p'); disp(p);

