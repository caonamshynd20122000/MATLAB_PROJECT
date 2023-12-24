function [a1,a0,r2,ketquadudoan] = Hoiquyhammue(xa, ya, gtx)
    n = length(xa);
    sumx = 0;
    sumy = 0;
    sumxy = 0;
    sumx2 = 0;
    st = 0;
    sr = 0;
    for i = 1 : n
        sumx = sumx + xa(i);
        sumy = sumy + log(ya(i));
        sumxy = sumxy + xa(i) * log(ya(i));
        sumx2 = sumx2 + xa(i) *xa(i);
    end
    xm = sumx/n;
    ym = sumy/n;
    a1 = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx*sumx); 
    a0 = exp(ym - a1*xm);
    for i = 1 : n
        st = st + (log(ya(i)) - ym)^2;
        sr = sr + (log(ya(i)) - a1*xa(i) - log(a0)) ^2;
    end
    r2 = (st - sr)/st;
ketquadudoan = a0*exp(a1*gtx);
end