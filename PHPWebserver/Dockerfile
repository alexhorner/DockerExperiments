FROM ubuntu:18.04

EXPOSE 80

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php -y

WORKDIR /usr/src/app
COPY startup.sh .

CMD ["/bin/bash", "/usr/src/app/startup.sh"]