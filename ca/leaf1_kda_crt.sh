openssl ca -config intermediate/openssl.cnf -extensions server_cert \
    -days 375 -notext -md sha256 -in leaf/csr/kda.com.csr.pem \
    -out leaf/certs/kda.com.cert.pem
chmod 444 leaf/certs/kda.com.cert.pem