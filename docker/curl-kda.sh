# curl -v \
#     --cert ../ca/intermediate/certs/intermediate.cert.pem:intermediate \
#     --key ../ca/intermediate/private/intermediate.key.pem \
#     --cacert ../ca/certs/ca.cert.pem \
#     https://kda.com

# curl -v \
#     --cert ../ca/leaf/certs/example.com.cert.pem:leaf \
#     --key ../ca/leaf/private/example.com.key.pem \
#     --cacert ../ca/root/certs/ca.cert.pem \
#     https://kda.com

curl -v \
    --cert ../ca/leaf/certs/example.com.cert.full.pem:leaf \
    --key ../ca/leaf/private/example.com.key.pem \
    --cacert ../ca/root/certs/ca.cert.pem \
    https://kda.com