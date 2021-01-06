FROM alpine

RUN apk add influxdb

# Add telegraf for monitoring
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache
COPY	/srcs/telegraf.conf			/etc/telegraf/

EXPOSE 8086 8083


COPY srcs/setup.sh /
ENTRYPOINT ["sh", "setup.sh"]