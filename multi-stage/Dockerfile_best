FROM composer as backend

LABEL maintainer="fjmn2001@gmail.com"
LABEL application="medine-hello-world"

WORKDIR /app

COPY composer.json /app/
RUN composer install \
    --ignore-platform-reqs \
    --no-ansi \
    --no-autoloader \
    --no-dev \
    --no-interaction \
    --no-scripts

COPY . /app/
RUN composer dump-autoload --no-dev --optimize --classmap-authoritative

FROM php:8-apache

RUN pecl install xdebug-3.1.1 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

ENV DISPLAY_ERRORS="On"

WORKDIR /app
COPY --from=backend /app /var/www/html/
COPY php.ini /usr/local/etc/php/

