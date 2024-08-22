openssl ca -config intermediate/openssl.cnf -extensions usr_cert \
    -days 375 -notext -md sha256 -in leaf/csr/example.com.csr.pem \
    -out leaf/certs/example.com.cert.pem
chmod 444 leaf/certs/example.com.cert.pem