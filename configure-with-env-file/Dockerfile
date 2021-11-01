FROM php:8-apache

RUN pecl install xdebug-3.1.1 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

# Setup SO Libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git zip

### Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY php.ini /usr/local/etc/php/