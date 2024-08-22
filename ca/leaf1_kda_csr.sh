openssl req -config leaf/leaf1_kda.cnf \
    -key leaf/private/kda.com.key.pem \
    -new -sha256 -out leaf/csr/kda.com.csr.pem


# openssl req -config intermediate/leaf.cnf \
#     -key intermediate/private/example.com.key.pem \
#     -new -sha256 -out intermediate/csr/example.com.csr.pem \
#     -addext "subjectAltName = DNS:example.com,DNS:www.example.com,DNS:m.example.com"