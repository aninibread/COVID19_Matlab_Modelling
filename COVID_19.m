function dydt = COVID_19(t,y,b,k)

    ds = -b*y(1)*y(2);
    di = b*y(1)*y(2) - k*y(2);
    dr = k*y(2);
    
    dydt = [ds; di; dr];
    dydt = dydt(:);
end