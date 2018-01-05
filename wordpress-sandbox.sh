#/bin/sh!

sudo chmod 777 ./scripts-wordpress/wp-init-xdebug.sh
sudo docker-compose -f wordpress-sandbox.yml up --force-recreate

