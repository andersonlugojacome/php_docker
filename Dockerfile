
# Add php 8.2
FROM php:8.2-apache

# Habilitar mod_rewrite
RUN a2enmod rewrite
# RUN a2enmod mpm_prefork


# Instalar dependencias
RUN apt-get update && apt-get install -y libpq-dev
RUN docker-php-ext-install mysqli 

# # Configurar Apache para servir desde el directorio 'public'
# # COPY . /var/www/html
RUN echo "DocumentRoot /var/www/html/public" > /etc/apache2/sites-available/000-default.conf

# # Configuración adicional para Apache
# RUN echo "<Directory /var/www/html/public>" > /etc/apache2/apache2.conf
# RUN echo "    AllowOverride All" >> /etc/apache2/apache2.conf
# RUN echo "</Directory>" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html
