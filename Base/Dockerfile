FROM ubuntu:18.04

#Expose important ports

EXPOSE 3306
EXPOSE 80
EXPOSE 443
EXPOSE 22  

#Expose a range for general use

EXPOSE 1000
EXPOSE 1001
EXPOSE 1002
EXPOSE 1003
EXPOSE 1004
EXPOSE 1005

#Prepare basic utilities

RUN apt-get update -y
RUN apt-get install openssh-server -y
RUN apt-get install htop -y
RUN apt-get install byobu -y

#Run default initialisation

COPY ./init.sh /init.sh
RUN bash /init.sh
RUN rm /init.sh

#Configure services

COPY ./sshd_config /etc/ssh/sshd_config

#Configure entrypoint

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]