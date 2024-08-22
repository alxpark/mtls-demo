openssl pkcs12 -export -out leaf/certs/example.com.full.pfx \
    -inkey leaf/private/example.com.key.pem -in leaf/certs/example.com.cert.pem \
    -certfile intermediate/certs/intermediate.cert.pem -certfile root/certs/ca.cert.pem