FROM ubuntu:18.04

EXPOSE 80

RUN apt-get update
RUN apt-get install apache2
RUN apt-get install libapache2-mod-php
RUN service apache2 start

CMD ["/bin/bash"]