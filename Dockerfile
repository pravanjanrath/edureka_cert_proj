# Use the base image
FROM devopsedu/webapp

# Copy your PHP website files to the container
COPY website /var/www/html/

# Open port 80
EXPOSE 80

# Start the Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
