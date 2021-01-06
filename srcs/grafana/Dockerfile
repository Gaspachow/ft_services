FROM alpine

# Install grafana
RUN apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache

WORKDIR	/usr/share/grafana
COPY srcs/grafana.db /usr/share/grafana/data/
EXPOSE 3000

# Add telegraf for monitoring
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache
COPY	/srcs/telegraf.conf			/etc/telegraf/

COPY srcs/setup.sh /usr/share/grafana
ENTRYPOINT ["sh", "setup.sh"]