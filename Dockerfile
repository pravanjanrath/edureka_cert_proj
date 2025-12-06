FROM devopsedu/webapp
RUN rm -rf /var/www/html/*
COPY website /var/www/html/

EXPOSE 8081

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
