#!/usr/bin/env bash

cd /var/www/html/project_name/
git pull origin develop
composer install
php artisan migrate
apidoc -i doc/api-source/ -o public/api-document/
