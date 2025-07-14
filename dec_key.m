function d = dec_key(e, phi)
    [g, d, ~] = gcd(e, phi);
    if g ~= 1
        error('e and phi are not coprime. No inverse exists.');
    end
    d = mod(d, phi);  % Ensure d is positive
end
