% Non-Linear Regression

% t
% theta1

% residual
% initial value


function [theta1_fit]=vimalkum_Final_p2e(t,theta1)

c1=1;
c2=1;
res=zeros(1,1);

% initial residual
initial_residual=sum(((c1*t)./(t+c2)-theta1).^2);
res(1)=initial_residual;

for i=1:10000
    residual=-((c1*t)./(t+c2)-theta1);
    j1=t./(t+c2);
    j2=(-c1*t)./((t+c2).^2);
    J=[j1 j2];
    dc=J\residual;
    c1=c1+dc(1);
    c2=c2+dc(2);
    final_residual=sum(((c1*t)./(t+c2)-theta1).^2);
    if res(length(res))==final_residual
        break
    end
    res(i+1)=final_residual;
end

theta1_fit=(c1*t)./(t+c2);

% 
% modelfun = @(b,x)((b(1)*x)./(x+b(2)));
% NLM = fitnlm(t,theta1,modelfun,[5 5]);
% theta1_fit=predict(NLM,t);
% 
% mean(abs(theta1_fit-theta1))