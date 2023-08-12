FROM devopsedu/webapp

#Update Repository
RUN sudo apt update -y

#Install Apache
RUN sudo apt install -y apache2

#Install PHP Modules
RUN sudo apt install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip

#Copy Application Files
RUN sudo rm -rf /var/www/html/*
COPY website /var/www/html/

EXPOSE 8081

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
