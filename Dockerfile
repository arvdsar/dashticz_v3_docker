FROM php:apache-buster
RUN apt-get update && apt-get install -yq git 
RUN cd /var/www/html
RUN git clone https://github.com/Dashticz/Dashticz --branch v3.5.0-beta

EXPOSE 80
VOLUME /var/www/html/Dashticz/custom

