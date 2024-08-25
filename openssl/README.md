openssl s_client -connect google.com:443 -showcerts 2>&1 < /dev/null | sed -n '/-----BEGIN/,/-----END/p' > google-chain.pem

openssl verify -verbose -show_chain -CAfile google-chain.pem google.com.pem

openssl s_client -CAfile ../ca/root/certs/ca.cert.pem -connect kda.com:443 -showcerts

openssl s_client -connect kda.com:443 -showcerts 2>&1 < /dev/null | sed -n '/-----BEGIN/,/-----END/p' > kda.com.pem

openssl verify -verbose -show_chain -CAfile ../ca/leaf/ca/ca-bundle.pem kda.com.pem
openssl verify -verbose -show_chain -CAfile ../ca/root/certs/ca.cert.pem kda.com.pem

# How to get public trusted CA

- curl -o cacert.pem https://curl.se/ca/cacert.pem
- yum update ca-certificates
- brew install ca-certificates
-
