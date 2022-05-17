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

# Install and enable Source Gaurdian loader
RUN PHP_VERSION=$(php -v | head -n1 | cut -d' ' -f2 | cut -d. -f1-2) \
    && mkdir -p /tmp/sourceguardian \
    && cd /tmp/sourceguardian \
    && curl -Os https://www.sourceguardian.com/loaders/download/loaders.linux-x86_64.tar.gz \
    && tar xzf loaders.linux-x86_64.tar.gz \
    && cp ixed.${PHP_VERSION}.lin "$(php -i | grep '^extension_dir =' | cut -d' ' -f3)/sourceguardian.so" \
    && echo "extension=sourceguardian.so" > /usr/local/etc/php/conf.d/15-sourceguardian.ini \
    && rm -rf /tmp/sourceguardian
