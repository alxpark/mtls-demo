# Docker httpd

https://hub.docker.com/_/httpd

## httpd.conf

docker run --rm httpd:2.4 cat /usr/local/apache2/conf/httpd.conf > my-httpd.conf

## httpd-ssl.conf

docker run --rm httpd:2.4 cat /usr/local/apache2/conf/extra/httpd-ssl.conf > my-httpd-ssl.conf

## TLS-SRP (Secure Remote Password key exchange for TLS, specified in RFC 5054)

openssl srp -srpvfile passwd.srpv -add username

## apache ssl config

https://httpd.apache.org/docs/2.4/ssl/ssl_howto.html
https://httpd.apache.org/docs/current/mod/mod_ssl.html
