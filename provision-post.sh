#!/usr/bin/env bash

set -ex

export PATH=/usr/local/bin:$PATH

cd /var/www/wordpress

if [ -e '/var/www/wordpress/wp-config.php' ]; then

wp core config --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_HOME', 'http://wckansai.dev');
define('WP_SITEURL', 'http://wckansai.dev');
PHP
