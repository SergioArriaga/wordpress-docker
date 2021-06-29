#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /home/pi/wordpress-docker
$COMPOSE run certbot renew && $COMPOSE kill -s SIGHUP wordpress-docker_nginx_1
