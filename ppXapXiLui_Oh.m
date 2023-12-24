function kq = ppXapXiLui_Oh(xa, ya, giatrix)
    h = abs(xa(2) - xa(1));
    for i = 1 : length(xa)   
        if giatrix == xa(i)
            kq = (ya(i)-ya(i-1))/h;
            break;
        end
    end
end