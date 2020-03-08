FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install openjdk-8-jre -y

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /data

CMD ["/entrypoint.sh"]