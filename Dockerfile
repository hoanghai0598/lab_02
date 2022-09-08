FROM php:8.0-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
