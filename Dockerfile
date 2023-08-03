FROM openresty/openresty:1.21.4.1-0-jammy

RUN luarocks install datadome-openresty

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
