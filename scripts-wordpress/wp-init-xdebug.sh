#!/bin/sh

pecl install xdebug

# Build process completed successfully
# Installing '/usr/local/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so'
# Install ok: channel://pecl.php.net/xdebug-2.5.5
# Configuration option "php_ini" is not set to php.ini location
# You should add "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so" to php.ini

echo '' >> /usr/local/etc/php/php.ini
echo '[Xdebug]' >> /usr/local/etc/php/php.ini
echo 'zend_extension=xdebug.so' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_connect_back=1' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_handler=dbgp' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_mode=req' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_autostart=true' >> /usr/local/etc/php/php.ini
echo 'xdebug.remote_log=/tmp/xdebug.log' >> /usr/local/etc/php/php.ini
echo 'xdebug.max_nesting_level = 512' >> /usr/local/etc/php/php.ini

exec "apache2-foreground"

