FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

RUN apk add mariadb mariadb-client mysql-client
RUN mkdir -p /run/mysqld/

COPY srcs/setup.sh  /
COPY srcs/my.cnf /etc/

EXPOSE 3306

ENTRYPOINT ["sh", "setup.sh"]
