function value_enc = encrypter(value,e,N)

for k = 1:length(value)
    value_enc = powermod(value(k),e,N);
end

end