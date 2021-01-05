FROM alpine

# setup PHP
RUN apk update
RUN apk add php7 php7-fpm php7-session php7-mbstring php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom


# setup PHPMyAdmin
RUN mkdir -p var/www/
COPY srcs/phpMyAdmin-4.9.2-english.tar.gz /tmp
RUN tar -xzvf tmp/phpMyAdmin-4.9.2-english.tar.gz && rm tmp/phpMyAdmin-4.9.2-english.tar.gz
RUN mv phpMyAdmin-4.9.2-english var/www/phpmyadmin
COPY /srcs/phpmyadmin.config.php /var/www/phpmyadmin/config.inc.php

# setup nginx
RUN mkdir -p /run/nginx
RUN apk add nginx
COPY srcs/nginx.conf        /etc/nginx/

COPY /srcs/setup.sh /

EXPOSE 5000

ENTRYPOINT ["sh", "setup.sh"]
