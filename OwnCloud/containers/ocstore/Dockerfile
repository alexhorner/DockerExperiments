FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80

WORKDIR /container
COPY ./entrypoint.sh .

RUN apt-get update
RUN apt-get install unar -y
RUN apt-get install wget -y
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php -y
RUN apt-get install php-mysql -y
RUN apt-get install php-zip -y
RUN apt-get install php-mbstring -y
RUN apt-get install php-xml -y
RUN apt-get install php-intl -y
RUN apt-get install php-gd -y
RUN apt-get install php-curl -y

RUN phpenmod pdo
RUN phpenmod zip
RUN phpenmod mbstring
RUN phpenmod xml
RUN phpenmod intl
RUN phpenmod gd
RUN phpenmod curl

RUN a2enmod rewrite

WORKDIR /etc/apache2
RUN rm apache2.conf
COPY ./apache2.conf .

WORKDIR /etc/apache2/sites-enabled
RUN rm ./*

WORKDIR /etc/apache2/sites-available
RUN rm ./*
COPY ./site.conf .
RUN a2ensite site.conf

WORKDIR /var/www
RUN rm -rf ./html
RUN wget https://download.owncloud.org/community/owncloud-10.3.2.zip
RUN unar owncloud-10.3.2.zip
RUN rm owncloud-10.3.2.zip
RUN chown -R www-data:www-data ./owncloud

WORKDIR /var/www/owncloud

CMD ["bash", "/container/entrypoint.sh"]