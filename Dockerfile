FROM php:7.4-apache
RUN apt-get update && \
    apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd exif && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /var/www/html/
