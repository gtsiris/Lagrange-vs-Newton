%Georgios Tsiris, 1115201700173
function [n,DD] = newtonPOLY(x,y)
% ÓõíÜñôçóç ðïõ õëïðïéåß ôçí ðáñåìâïëÞ Newton
% Åßóïäïò;
% x = [x0 x1 ... xN], y = [y0 y1 ... yN]
% ¸îïäïò:
% n: ðïëõþíõìï ðáñåìâïëÞò Newton âáèìïý N
N=length(x)-1;
DD=zeros(N+1,N+1);
DD(1:N +1,1)= y';
for k=2:N+1
   for m=1:N+2-k
     DD(m,k)=(DD(m+1,k-1)-DD(m,k-1))/(x(m+k-1)-x(m));
   end
end
a=DD(1,:); % õðïëïãéóìüò ôùí Ái
disp('a=apotelesma pinaka diirimenon diaforon'); disp(a);

xp=1/2
fp=a(1)+a(2)*(xp-x(1))+a(3)*(xp-x(1))*(xp-x(2));
disp('fp');disp(fp);

xp=1/3
fp=a(1)+a(2)*(xp-x(1))+a(3)*(xp-x(1))*(xp-x(2));
disp('fp');disp(fp);

n=a(N+1);
disp('n=a(N+1)');disp(n);
for k=N:-1:1
   n=[n a(k)]-[0 n*x(k)]; % ðïëõþíõìï ðáñåìâïëÞò
   disp('n2');disp(n);
end
end

