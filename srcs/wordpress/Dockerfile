FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

# Setup wordpress files
RUN mkdir -p /var/www
COPY srcs/wordpress.tar.gz      /var/www/
RUN tar -xzvf /var/www/wordpress.tar.gz
RUN rm /var/www/wordpress.tar.gz
COPY srcs/wp-config /var/www/wordpress

# setup nginx
RUN mkdir -p /run/nginx
RUN apk add nginx 
COPY srcs/nginx.conf        /etc/nginx/

# setup PHP
RUN apk add php7.3 php7.3-fpm php7.3-mysql php-mbstring php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline

# Add setup to start php
COPY srcs/setup.sh /

EXPOSE 5050

ENTRYPOINT ["sh", "setup.sh"]