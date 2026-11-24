FROM php:8.2-apache

# Copiar php.ini (necesario porque la imagen no trae uno por defecto)
RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

# Instalar extensiones
RUN docker-php-ext-install opcache \
    && sed -i 's/;opcache.enable=1/opcache.enable=1/' /usr/local/etc/php/php.ini

# Copiar código
COPY src/ /var/www/html/

EXPOSE 80
