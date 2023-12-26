function y = tichphanhinhthang(fx,a,b,N)
    h = (b - a) / N;
    y = fx(a) + fx(b);
    for i = 1:1:N-1
        y = y + 2*fx(a + i*h);
    end
    y = y * (h / 2);
end