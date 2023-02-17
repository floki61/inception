service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}; flush privileges;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; flush privileges;"
mysql -u root -e "flush privileges;"
mysql -u root $MYSQL_DATABASE < db.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
service mysql stop
exec $@

