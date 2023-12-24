function kq = ppXapXiLui_Oh2_func(fx,h, giatrix)
    kq = (3*fx(giatrix) - 4 * fx(giatrix - h) + fx(giatrix - 2*h)) / (2*h);
end