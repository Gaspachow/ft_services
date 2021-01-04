FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

# update
RUN apk update
RUN apk upgrade

# setup nginx
RUN apk add nginx 
RUN rm -v /etc/nginx/nginx.conf
ADD srcs/nginx.conf /etc/nginx/ 

EXPOSE 80
COPY srcs/setup.sh /

ENTRYPOINT ["sh", "setup.sh"]
