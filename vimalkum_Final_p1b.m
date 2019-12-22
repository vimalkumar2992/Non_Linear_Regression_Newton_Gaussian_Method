[t,y]=ode45(@vimalkum_Final_p1a,[0,1],0);
y_solution=1*exp((-(1^2)));
error=abs(y(length(y))-y_solution);
error_5=fix(error*10^5)/10^5;
