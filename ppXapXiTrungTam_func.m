function kq = ppXapXiTrungTam_func(fx,h, giatrix)
    kq = (fx(giatrix + h) - fx(giatrix - h))/ (2*h);
end