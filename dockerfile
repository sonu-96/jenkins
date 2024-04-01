FROM ubuntu
RUN apt-get update
RUN apt-get install –y apache2
WORKDIR /var/www/html/
COPY index.html .
CMD ["apache2ctl", "-D", "FOREGROUND"]
