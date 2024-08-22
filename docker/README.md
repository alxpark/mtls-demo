# NGINX mTLS testing

## Docker Desktop Install

- https://www.docker.com/products/docker-desktop/

## Local hostname Update for testing

sudo vi /etc/hosts

```
127.0.0.1 localhost kda.com
```

## Docker scripts

- ./start.sh
- ./stop.sh
- ./restart.sh

## Curl scripts

Testing client certificate scenario

1. call kda.com with example.com.cert.pem

```
 curl -v \
     --cert ../ca/leaf/certs/example.com.cert.pem:leaf \
     --key ../ca/leaf/private/example.com.key.pem \
     --cacert ../ca/root/certs/ca.cert.pem \
     https://kda.com
```

2. call kda.com with example.com.cert.full.pem

```
curl -v \
    --cert ../ca/leaf/certs/example.com.cert.full.pem:leaf \
    --key ../ca/leaf/private/example.com.key.pem \
    --cacert ../ca/root/certs/ca.cert.pem \
    https://kda.com
```

- What's the difference?
