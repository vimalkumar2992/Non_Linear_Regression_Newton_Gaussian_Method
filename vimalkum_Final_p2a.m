% root problem
L1=0.6;
L2=0.8;
h=0.1;
mass=10;

(L1 * sin(theta1) + L2 * sin(theta2))=0.1;

f=@(theta1,theta2)0.6*sin(theta1)+0.8*(theta2)-0.1;
f_derivative=@(theta2)(0.8*cos(theta2));
