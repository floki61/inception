a2enconf adminer
mkdir /run/php
wget "http://www.adminer.org/latest.php" -O /var/www/html/wordpress/adminer.php
chown -R www-data:www-data /var/www/
chmod 755 /var/www/html/wordpress/adminer.php
php -S 0.0.0.0:8888

# FROM debian:buster

# WORKDIR /var/www/html
# RUN wget https://wordpress.org/latest.tar.gz
# RUN tar xvf latest.tar.gz
# RUN rm latest.tar.gz
# RUn sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.3/fpm/pool.d/www.conf
# RUN chown -R www-data:www-data /var/www/html/wordpress/
# RUN mkdir /run/php/
# # RUN ["php-fpm7.3", "-F", "-R"]
# COPY /wp-config.php  /
# COPY /wordpress.sh /
# CMD [ "sh", "/wordpress.sh" ]