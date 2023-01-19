service mysql start
mysql -u root <<-EOF
CREATE DATABASE bob;
CREATE USER 'user0'@'localhost' IDENTIFIED BY 'password0';
GRANT ALL PRIVILEGES ON mydb.* TO 'user0'@'localhost';
FLUSH PRIVILEGES;
EOF
service mysql stop


