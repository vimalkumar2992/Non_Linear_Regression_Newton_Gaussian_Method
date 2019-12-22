function vimalkum_Final_p2c(t,theta1,L1, L2,h)
[x,theta2] = vimalkum_Final_p2b(theta1,L1, L2,h);
for i = 1:length(t)
    if i~=length(t)
        velocity_temp=((x(i+1)-x(i))/(t(i+1)-(t(i))));
    end 
    if i== length(t)
        velocity_temp=((x(i)-x(i-1))/(t(i)-(t(i-1))));
    end
    velocity(i)=velocity_temp;
end

for j = 1:length(t)
    if j~=length(t)
        acceleration_temp=((velocity(j+1)-velocity(j))/(t(j+1)-(t(j))));
    end 
    if j== length(t)
        acceleration_temp=((velocity(j)-velocity(j-1))/(t(j)-(t(j-1))));
    end
    acceleration(j)=acceleration_temp;
end

subplot(5,1,1);
plot(t,theta1,'b--o')
title(sprintf('Theta1 vs t'))
xlabel('t')
ylabel('Theta1')

subplot(5,1,2);
plot(t,theta2,'b--o')
title(sprintf('Theta2 vs t'))
xlabel('t')
ylabel('Theta2')

subplot(5,1,3);
plot(t,x,'b--o')
title(sprintf('X vs t'))
xlabel('t')
ylabel('X')

subplot(5,1,4);
plot(t,velocity,'b--o')
title(sprintf('Velocity vs t'))
xlabel('t')
ylabel('Velocity')

subplot(5,1,5);
plot(t,acceleration,'b--o')
title(sprintf('Acceleration vs t'))
xlabel('t')
ylabel('Acceleration')


