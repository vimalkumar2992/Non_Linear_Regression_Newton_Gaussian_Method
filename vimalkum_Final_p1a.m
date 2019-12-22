function yp=vimalkum_Final_p1a(t,y)
    if t==0
        yp=1;
    end
    if t~=0
        yp=y*((-2*t)+(1/t));
    end
%     yp=dy_dt(t,y);
%     y_solution=@(t)t*exp((-(t^2)));