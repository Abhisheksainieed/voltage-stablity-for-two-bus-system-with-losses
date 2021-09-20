%written by Abhishek saini
%M.Tech Power system (SVNIT, surat)
%abhisheksaini.eed@gmail.com

clc;
clear;
j=sqrt(-1);
z=0.1+j*1;        %resistance is 10% of X
theta=angle(z);

p = (0:0.01:0.20);    
n=length(p);
k=1;
fac=cos(theta)+k*sin(theta);
for i=1:n
    v1(i)= sqrt(-(1-2*p(i)*fac)/2 + sqrt((1-2*p(i)*fac)*(1-2*p(i)*fac)-4*p(i)*p(i)*(1+k*k))/2);
    v2(i)= sqrt(-(1-2*p(i)*fac)/2 - sqrt((1-2*p(i)*fac)*(1-2*p(i)*fac)-4*p(i)*p(i)*(1+k*k))/2);
end
plot(p,abs(v1),'color','b','linewidth',2);
hold on;
grid on;
plot(p,abs(v2),'color','g','linewidth',2);
hold on;
xlabel('active power','Fontweight','Bold');
ylabel('voltage at bus 2','Fontweight','Bold');

%%
j=sqrt(-1);
z=0.5+j*1;        %resistance is 50% of X
theta=angle(z);

pp = (0:0.01:0.19);    
nn=length(pp);
k=1;
fac=cos(theta)+k*sin(theta);
for i=1:nn
    v11(i)= sqrt(-(1-2*pp(i)*fac)/2 + sqrt((1-2*pp(i)*fac)*(1-2*pp(i)*fac)-4*pp(i)*pp(i)*(1+k*k))/2);
    v21(i)= sqrt(-(1-2*pp(i)*fac)/2 - sqrt((1-2*pp(i)*fac)*(1-2*pp(i)*fac)-4*pp(i)*pp(i)*(1+k*k))/2);
end
plot(pp,abs(v11),'color','b','linewidth',2);
hold on;
grid on;
plot(pp,abs(v21),'color','g','linewidth',2);
hold on;
xlabel('active power','Fontweight','Bold');
ylabel('voltage at bus 2','Fontweight','Bold');

%%  without losses
p = (0:0.01:0.21);    
n=length(p);
k=1;

for i=1:n
    v(i)=sqrt(1/2 - p(i)*k-sqrt(1/4-p(i)*k-p(i)*p(i))) ;
    l(i)=sqrt(1/2 - p(i)*k+sqrt(1/4-p(i)*k-p(i)*p(i)));
end

plot(p,v,'color','r','linewidth',2);
hold on;
grid on;
plot(p,l,'color','y','linewidth',2);
hold on;
xlabel('active power','Fontweight','Bold');
ylabel('voltage at bus 2','Fontweight','Bold');
