# Use the official PHP image with Apache
FROM php:8.2-apache

# Install any PHP extensions if needed (optional)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the website files into the Apache server directory
COPY . /var/www/html/

# Set proper permissions (optional but good practice)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (Apache default)
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
