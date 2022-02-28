%Georgios Tsiris, 1115201700173
clear; clc;

ff=inline('sin(x)');
f_3=inline('-cos(x)');

x=[0 pi/4 pi/2];
f=[sin(0) sin(pi/4) sin(pi/2)];

n=length(x);
L=ones(1,n);


x0=pi/3
for i=1:n
    for j=1:i-1
        L(i)=L(i)*(x0-x(j))/(x(i)-x(j));
        %disp('L(i)-1'); disp(L(i));
    end
    for j=i+1:n
        L(i)=L(i)*(x0-x(j))/(x(i)-x(j));
        %disp('L(i)-2'); disp(L(i));
    end
end

y=0;
for i=1:n
    y=y+f(i)*L(i);
    disp('y'); disp(y);
end

y
ff(x0)

disp(['error at x0= ', num2str(x0)]);
disp(norm(y-ff(x0)));

temp=1;
for j=1:n
    temp=temp*(x0-x(j));
end
max_R=0;
for j=1:n
    R = abs(temp*f_3(x(j))/6);
    if R > max_R
        max_R = R;
    end
end
disp('abs_error upper bound:');
disp(max_R);
disp('******************')


x0=pi/6
for i=1:n
    for j=1:i-1
        L(i)=L(i)*(x0-x(j))/(x(i)-x(j));
        %disp('L(i)-1'); disp(L(i));
    end
    for j=i+1:n
        L(i)=L(i)*(x0-x(j))/(x(i)-x(j));
        %disp('L(i)-2'); disp(L(i));
    end
end

y=0;
for i=1:n
    y=y+f(i)*L(i);
    disp('y'); disp(y);
end

y
ff(x0)

disp(['error at x0= ', num2str(x0)]);
disp(norm(y-ff(x0)));

 % Grafiki parastasi
xx=[0:0.02: 2*pi]; % ðåäßï ïñéóìïý ôïõ x
yy=ff(xx); % ôéìÞ y ãéá êÜèå x ðïõ áíÞêåé óôï [0,2pi]
clf
plot(xx,yy,'r-') % ãñáöéêÞ ðáñÜóôáóç ðïëõùíýìïõ
