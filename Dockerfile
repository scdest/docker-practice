FROM ubuntu:18.04

RUN apt-get update && apt-get install apache2 -y

COPY index.html /var/www/html/index.html
COPY ports.conf /etc/apache2/ports.conf
COPY apache.conf /etc/apache2/apache2.conf
RUN useradd hillel_devops

EXPOSE 8080
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]