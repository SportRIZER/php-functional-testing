FROM php:8.0.11-cli
RUN apt-get update \
    && apt-get install  -y --no-install-recommends ssh-client git zip curl zip unzip postgresql-client libpq-dev \
    && pecl install pcov \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql \
    && docker-php-ext-enable pcov

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
