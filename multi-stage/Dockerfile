FROM php:8-apache

LABEL maintainer="fjmn2001@gmail.com"
LABEL application="medine-hello-world"

RUN apt-get update \
    && apt-get install -y --no-install-recommends git zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && pecl install xdebug-3.1.1 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /app

ENV DISPLAY_ERRORS="On"

COPY php.ini /usr/local/etc/php/
COPY . /app/

RUN composer install \
    --ignore-platform-reqs \
    --no-ansi \
    --no-dev \
    --no-interaction \
    --no-scripts

