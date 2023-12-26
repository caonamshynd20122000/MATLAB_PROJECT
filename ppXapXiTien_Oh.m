function kq = ppXapXiTien_Oh(xa, ya, giatrix)
    h = abs(xa(2) - xa(1));
    for i = 1 : length(xa)   
        if giatrix == xa(i)
            kq = (ya(i+1)-ya(i))/h;
            break;
        end
    end
end