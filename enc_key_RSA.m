function e = enc_key_RSA(N, phi)
e = randi([1, phi],1,1);

if (~iscoprime(e,N)) && (~iscoprime(e,phi))
    e = enc_key_RSA(N, phi);
end
end