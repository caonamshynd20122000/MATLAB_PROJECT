function [nghiem, solanlap] = ppChiaDoi(f,a,b,saiSo)
    solanlap = 0;
    while b - a > saiSo
        solanlap = solanlap + 1;
        c = (a+b)/2;
        if f(c) == 0
            break;
        elseif f(c)*f(a) < 0
            b = c;
        else
            a = c;
        end
    end
    nghiem = (a+b)/2;
end