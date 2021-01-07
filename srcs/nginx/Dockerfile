FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

# setup nginx
RUN mkdir -p /run/nginx
RUN apk add nginx 
COPY srcs/nginx.conf        /etc/nginx/
COPY srcs/index.html        /var/www/

# setup ssl
RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=FR/ST=France/L=Paris/O=42Paris/CN=127.0.0.1" \
    -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt

# Add telegraf for monitoring
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache
COPY	/srcs/telegraf.conf			/etc/telegraf/

EXPOSE 80 443
COPY srcs/setup.sh /
ENTRYPOINT ["sh", "setup.sh"]
