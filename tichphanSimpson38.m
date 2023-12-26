function y = tichphanSimpson38(fx,a,b,N)
    h = (b - a) / N;
    y = fx(a) + fx(b);
    for i = 1:1:N-1
        if mod(i,3) ~= 0
            y = y + 3 * fx(a + i * h);
        else
            y = y + 2 * fx(a + i * h);
        end
    end
    y = y * ((3 * h) / 8);
end