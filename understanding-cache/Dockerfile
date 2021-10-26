FROM php:8-apache

LABEL maintainer="fjmn2001@gmail.com"
LABEL application="medine-hello-world"

RUN pecl install xdebug-3.1.1 \
  && docker-php-ext-enable xdebug \
  && docker-php-ext-install pdo pdo_mysql

ENV DISPLAY_ERRORS="On"

COPY php.ini /usr/local/etc/php/
COPY index.php /var/www/html/

