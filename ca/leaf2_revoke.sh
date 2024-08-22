openssl ca -config intermediate/openssl.cnf -revoke \
    leaf/certs/example.com.cert.pem

mv leaf/certs/example.com.cert.pem leaf/certs/bak/example.com.cert.bak.pem
mv leaf/certs/example.com.cert.full.pem leaf/certs/bak/example.com.cert.full.bak.pem
mv leaf/csr/example.com.csr.pem leaf/certs/bak/example.com.csr.bak.pem