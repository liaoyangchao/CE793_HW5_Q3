clc; close all; clear all

alpha=0;

dt=0.01;

dx=1;

u=0.08;

x=0:1:8;

T(1:9)=0;

a=((alpha*dt)/dx^2)-((u*dt)/(2*dx));
b=1-(2*alpha*dt/dx^2);
c=((alpha*dt)/dx^2)+((u*dt)/(2*dx));

for i=1:1:6
    for j=2:1:8
        Tn(j)=(a*T(j-1))+(b*T(j))+(c*T(j+1));
        T(j)=Tn(j); 
    end
    plot(x,T)
    hold on
    disp (T)
end

xlabel ('Location')
ylabel ('Temperature')