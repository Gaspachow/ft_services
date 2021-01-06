mariadb-install-db -u root
mysqld -u root & sleep 3
mysql -u root --execute="CREATE DATABASE wordpress;"
mysql -u root wordpress < /tmp/dump.sql
rm /tm/dump.sql
mysql -u root --execute="CREATE USER 'root'@'%' IDENTIFIED BY 'root'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION; USE wordpress; FLUSH PRIVILEGES;"
telegraf