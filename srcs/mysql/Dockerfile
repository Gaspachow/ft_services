FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

RUN apk add mariadb-server
RUN mkdir -p /run/mysqld/

COPY srcs/dump.sql  ./tmp/
COPY srcs/setup.sh  /


EXPOSE 3306

ENTRYPOINT ["sh", "setup.sh"]
