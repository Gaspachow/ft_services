FROM alpine

# setup ssl
RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=FR/ST=France/L=Paris/O=42Paris/CN=127.0.0.1" \
    -keyout /etc/ssl/private/ftps.key -out /etc/ssl/certs/ftps.crt

# setup VSFTPD
RUN apk add vsftpd
RUN echo "root:root" | chpasswd
COPY srcs/vsftpd.conf etc/vsftpd/vsftpd.conf
COPY srcs/setup.sh /

EXPOSE 21 20 20021

ENTRYPOINT ["sh", "setup.sh"]