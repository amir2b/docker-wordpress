ARG WORDPRESS_VERSION=5.9
FROM wordpress:${WORDPRESS_VERSION}

## Change uid & gid
ARG UID=1000 GID=1000
RUN usermod -u ${UID} www-data \
    && groupmod -g ${GID} www-data

## Install and enable Source Gaurdian loader
RUN PHP_VERSION=$(php -v | head -n1 | cut -d' ' -f2 | cut -d. -f1-2) \
    && curl -s -o /tmp/loaders.linux-x86_64.tar.gz https://www.sourceguardian.com/loaders/download/loaders.linux-x86_64.tar.gz \
    && tar -C /tmp/ -xzf /tmp/loaders.linux-x86_64.tar.gz ixed.${PHP_VERSION}.lin \
    && rm /tmp/loaders.linux-x86_64.tar.gz \
    && mv /tmp/ixed.${PHP_VERSION}.lin "$(php -i | grep '^extension_dir =' | cut -d' ' -f3)/sourceguardian.so" \
    && echo "extension=sourceguardian.so" > /usr/local/etc/php/conf.d/15-sourceguardian.ini
