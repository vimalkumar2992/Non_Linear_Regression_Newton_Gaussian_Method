function [t, y] = vimalkum_Final_p1c(N)
t0=0;
iv=0;
t=linspace(0,1,N+1);
dt = t(2)-t(1);
y(1)=iv;
for iter = 1:N
    slope= (vimalkum_Final_p1a(t0,iv)+vimalkum_Final_p1a(t0+dt,iv+dt*vimalkum_Final_p1a(t0,iv)))/2;
    iv=iv+(slope*dt);
    t0=t0+dt;
    y(iter+1)=iv;
    t(iter+1)=t0;
    iter=iter+1;
end
end