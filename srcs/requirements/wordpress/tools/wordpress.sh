cd /var/www/html/wordpress
wp core download --allow-root
wp config create  --dbhost=${MYSQL_DBNAME} --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --allow-root
chmod 600 wp-config.php
chown www-data:www-data wp-config.php
wp config set --allow-root 'WP_REDIS_HOST' REDIS;
wp config set --allow-root 'WP_REDIS_PORT' 6379;
wp core install --url=https://localhost --title="flokiinception" --admin_user=floki --admin_password=floki --admin_email=floki@example.com --allow-root

wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
php-fpm7.3 -F -R