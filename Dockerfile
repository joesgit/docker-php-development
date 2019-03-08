FROM php:7.2.6-fpm

# install php extensions
RUN docker-php-ext-install mysqli pdo_mysql
