openssl x509 -noout -text -in leaf/certs/example.com.cert.pem

openssl verify -CAfile leaf/ca/ca-bundle.pem \
    leaf/certs/example.com.cert.pem