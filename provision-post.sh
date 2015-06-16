#!/usr/bin/env bash

set -ex

export PATH=/usr/local/bin:$PATH

cd /var/www/wordpress

if [ -e /var/www/wordpress/wp-config.php ]; then
    rm -f /var/www/wordpress/wp-config.php
fi

wp core config --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_HOME', 'http://wckansai.dev');
define('WP_SITEURL', 'http://wckansai.dev');
PHP

wp db reset --yes
wp core install --url="http://wckansai.dev" --title="Welcome to the WordCamp Kansai 2015" --admin_user=admin --admin_password=admin --admin_email="admin@example.com"

wp cron event run wp_update_plugins
wp plugin update --all

wp cron event run wp_update_themes
wp theme update --all
