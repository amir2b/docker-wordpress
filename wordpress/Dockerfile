FROM php:7.4-apache

## Change uid & gid
RUN usermod -u 1000 www-data \
    && groupmod -g 1000 www-data

## Apt update
RUN apt-get update -y

## MySqli
RUN docker-php-ext-install mysqli

## Zip
RUN apt-get install -y libzip-dev zip \
    && docker-php-ext-install zip
