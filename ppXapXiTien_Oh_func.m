function kq = ppXapXiTien_Oh_func(fx,h, giatrix)
    kq = (fx(giatrix + h) - fx(giatrix))/h;
end