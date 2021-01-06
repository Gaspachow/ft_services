FROM alpine
LABEL MAINTAINER="gsmets @42Paris"

RUN apk add mariadb mariadb-client mysql-client
RUN mkdir -p /run/mysqld/

COPY srcs/setup.sh  /
COPY srcs/dump.sql tmp/
COPY srcs/my.cnf /etc/

# Add telegraf for monitoring
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache
COPY	/srcs/telegraf.conf			/etc/telegraf/

EXPOSE 3306

ENTRYPOINT ["sh", "setup.sh"]
