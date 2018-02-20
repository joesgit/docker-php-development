FROM php:5.6-apache

# install extensions
RUN apt-get update \
    && apt-get install -y libmcrypt-dev \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install mysqli pdo_mysql

# misc stuff
RUN a2enmod rewrite