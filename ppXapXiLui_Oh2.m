function kq = ppXapXiLui_Oh2(xa, ya, giatrix)
    h = abs(xa(2) - xa(1));
    for i = 1 : length(xa)
        if giatrix == xa(i)
            kq = (3*ya(i) - 4*ya(i-1) + ya(i-2))/(2*h);
        end
    end
end