openssl x509 -noout -text -in intermediate/certs/example.com.cert.pem

openssl verify -CAfile intermediate/certs/ca-chain.cert.pem \
    intermediate/certs/example.com.cert.pem