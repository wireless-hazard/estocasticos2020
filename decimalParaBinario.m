function bit = decimalParaBinario(x)
    bit = zeros(1,512);
    k = 2;
    for j = 0:32:480
        n = 1 + j;
        for i = 31:-1:0
            if ((x(k) - (2^i)) >= 0)
                bit(n) = 1;
                x(k) = x(k) - (2^i);
            else
                bit(n) = 0;
            end
            n = n + 1;
        end
        k = k + 1;
    end
end