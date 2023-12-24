function [nghiem,solanlap] = ppLap(fp,a,b,saiso)
    x0 = a;
    x1 = b;
    solanlap = 0;
    while solanlap < 10000
        solanlap = solanlap + 1;
    x1 = fp(x0);
    if abs(x1 - x0) <= saiso
        break;
    end
    x0 = x1;
    end
    nghiem = double(x1);
end