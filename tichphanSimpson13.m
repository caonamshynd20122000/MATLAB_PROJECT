function y = tichphanSimpson13(fx,a,b,N)
    h = (b - a) / N;
    y = fx(a) + fx(b);
    for i = 1:1:N-1
        if mod(i,2) == 1
            y = y + 4 * fx(a + i * h);
        end
        if mod(i,2) == 0
            y = y + 2 * fx(a + i * h);
        end
    end
    y = y * (h / 3);
end