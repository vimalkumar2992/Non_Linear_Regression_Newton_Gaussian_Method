function [x,theta2] = vimalkum_Final_p2b(theta1,L1, L2,h)
for i=1:length(theta1)
    [theta2(i)]= sub_func(theta1(i), L1, L2,h);
    x(i)=(L1*cos(theta1(i)))+(L2*cos(theta2(i)));
end
end

function [theta2_temp] = sub_func(theta1_temp, L1, L2,h)
theta2_temp=2*pi;

f=@(theta1_temp,theta2_temp,L1,L2,h)((L1*sin(theta1_temp)+L2*sin(theta2_temp))-h);
f_derivative=@(theta2_temp)(0.8*cos(theta2_temp));
iter=0;
tolerance=1e-6;

while iter<1000
    y=f(theta1_temp,theta2_temp,L1,L2,h);
    y_diff = f_derivative(theta2_temp);
    theta2_temp=theta2_temp-(y/y_diff);
    if abs(f(theta1_temp,theta2_temp,L1,L2,h)) < tolerance
        break
    end
    iter=iter+1;
end
end