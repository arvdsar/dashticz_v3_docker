FROM php:apache-buster
RUN apt-get update && apt-get install -yq git 
RUN cd /var/www/html

RUN git clone https://github.com/Dashticz/Dashticz 
RUN git checkout db9d7cecaf14ec39fdb6f498d48dd6676c513c91

EXPOSE 80
VOLUME /var/www/html/Dashticz/custom

