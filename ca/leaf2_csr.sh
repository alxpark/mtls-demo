openssl req -config leaf/leaf2.cnf \
    -key leaf/private/example.com.key.pem \
    -new -sha256 -out leaf/csr/example.com.csr.pem


# openssl req -config intermediate/leaf.cnf \
#     -key intermediate/private/example.com.key.pem \
#     -new -sha256 -out intermediate/csr/example.com.csr.pem \
#     -addext "subjectAltName = DNS:example.com,DNS:www.example.com,DNS:m.example.com"