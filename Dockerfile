FROM php:7.4.5-cli
RUN apt-get update \
    && apt-get install  -y --no-install-recommends ssh-client git zip curl zip unzip \
    && pecl install pcov \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-enable pcov

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
