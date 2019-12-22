[t,y]=ode45(@vimalkum_Final_p1a,[0,1],0);
y_solution=1*exp((-(1^2)));
error_ode45=abs(y(length(y))-y_solution);
steps_ode45=length(t);
% steps_ode45
% 57

for steps = 1:1000
    [t, y] = vimalkum_Final_p1c(steps);
    error_improved_euler=abs(y(length(y))-y_solution);
    if error_improved_euler<error_ode45
        break
    end
end

steps_improved_euler=steps;
%steps_improved_euler
% 372

% steps
% steps variable contains the minimum number of steps required in Improved
% Euler Method to have an accuracy as good as ode45 inbuilt function

