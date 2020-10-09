# 1.通过openssl生成私钥
openssl genrsa -out server.key 2048

# 2.使用私钥生成一个证书请求 CSR (Certificate Signing Request)
openssl req \
    -new \
    -days 3650 \
    -key server.key \
    -out server.csr \
    -subj "/C=CN/ST=BJ/L=BJ/O=BJ/OU=BJ/CN=127.0.0.1/CN=localhost/CN=192.168.50.97"

# 3.生成自签名证书
openssl x509 \
    -req \
    -days 3650 \
    -in server.csr \
    -signkey server.key \
    -out server.crt