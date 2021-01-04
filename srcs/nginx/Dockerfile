FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

# update
RUN apk update
RUN apk upgrade

# setup nginx
RUN apk add nginx 
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/index.html var/www/

EXPOSE 80
COPY srcs/setup.sh /

ENTRYPOINT ["sh", "setup.sh"]
