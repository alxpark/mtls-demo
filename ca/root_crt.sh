openssl req -config root/openssl.cnf -key root/private/ca.key.pem -new -x509 \
    -days 7300 -sha256 -extensions v3_ca -out root/certs/ca.cert.pem
chmod 444 root/certs/ca.cert.pem