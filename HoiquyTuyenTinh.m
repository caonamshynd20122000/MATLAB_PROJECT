function [a1, a0, r2, ketquadudoan] = HoiquyTuyenTinh(xa, ya, giaTrix)
    n = length(xa);
    sumx = 0;
    sumy = 0;
    sumxy = 0;
    sumx2 = 0;
    st = 0;
    sr = 0;
    for i = 1 : n
        sumx = sumx + xa(i);
        sumy = sumy + ya(i);
        sumxy = sumxy + xa(i) * ya(i);
        sumx2 = sumx2 + xa(i) * xa(i);
    end
    xm = sumx/n;
    ym = sumy/n;
    a1 = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx*sumx);
    a0 = ym - a1*xm;
    for i = 1: n
        st = st + (ya(i) - ym)^2;
        sr = sr + (ya(i) - a1*xa(i) - a0)^2;
    end 
    r2 = (st - sr)/st;
    ketquadudoan = a0+a1.*giaTrix;
end