clc;
close all;
clear;
  
prime = primes(30);
r_p = randi([2, length(prime)]);
r_q = randi([2, length(prime)]);
N = prime(r_q)*prime(r_p);
phi = (prime(r_q)-1)*(prime(r_p)-1);

e = enc_key_RSA(N,phi);
d = dec_key(e,phi); 

value = 'Kishore';
value = double(value);
value_enc = encrypter(value,e,N);
value_enc_str = char(value_enc);
value_enc = double(value_enc_str);
value_dec = decrypter(value_enc,d,N);
