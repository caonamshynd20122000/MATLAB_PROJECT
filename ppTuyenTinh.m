function [nghiem,solanlap] = ppTuyenTinh(f,a,b,saiso)
    syms x;
    solanlap = 0;
    x0 = a;
    t = '@(x)0';
    fd1 = str2func(['@(x)' char(diff(f(x)))]);
    fd2 = str2func(['@(x)' char(diff(f(x),2))]);
    while f(x0) * fd2(x0) <= 0
        if (strcmp(char(fd2),t))
        break;
        end
        x0 = (x0 + b)/2;
    end
    
    while solanlap < 10000
        solanlap = solanlap + 1;
        x1 = x0 - (f(x0)/fd1(x0));
        if abs( x1 - x0) <= saiso
            break;
        end
    x0 = x1;
    end
    nghiem = x1;
end