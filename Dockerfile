# Use official PHP Apache image
FROM php:8.2-apache

# Enable required PHP extensions (modify as needed)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the application files into the container
COPY . .

# Expose port 80 (Apache)
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
