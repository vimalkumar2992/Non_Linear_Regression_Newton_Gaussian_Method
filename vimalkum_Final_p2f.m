load('theta1.mat');
[theta1_fit]=vimalkum_Final_p2e(t,theta1);
L1=0.6;
L2=0.8;
h=0.1;

vimalkum_Final_p2c(t,theta1_fit,L1,L2,h);