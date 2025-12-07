FROM devopsedu/webapp

RUN rm -rf /var/www/html/*
COPY website/ /var/www/html/

EXPOSE 80
#test1
#Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
