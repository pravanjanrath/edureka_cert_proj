FROM devopsedu/webapp

RUN rm -rf /var/www/html/*
COPY website/ /var/www/html/

EXPOSE 80

#Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
