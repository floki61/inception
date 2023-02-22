a2enconf adminer
mkdir /run/php
wget "http://www.adminer.org/latest.php" -O /var/www/html/wordpress/adminer.php
chown -R www-data:www-data /var/www/html/wordpress/
chmod 755 /var/www/html/wordpress/adminer.php
php -S 0.0.0.0:8888