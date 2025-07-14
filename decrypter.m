function value_dec = decrypter(value,e,N)
value_dec = zeros(1,length(value));
for k = 1:length(value)
    value_dec(k) = powermod(value(k),e,N);
end

end