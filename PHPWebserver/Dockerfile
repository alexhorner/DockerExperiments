FROM ubuntu:18.04

EXPOSE 80

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php -y
RUN apt-get install php-mysql -y
RUN phpenmod pdo

WORKDIR /usr/src/app
COPY ./assets/startup.sh .

WORKDIR /etc/apache2
RUN rm apache2.conf
COPY ./assets/apache2.conf .

WORKDIR /etc/apache2/sites-enabled
RUN rm ./*

WORKDIR /etc/apache2/sites-available
RUN rm ./*
COPY ./assets/site.conf .
RUN a2ensite site.conf

CMD ["/bin/bash", "/usr/src/app/startup.sh"]