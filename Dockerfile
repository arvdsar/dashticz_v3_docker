FROM php:apache-buster
RUN apt-get update && apt-get install -yq git 
RUN cd /var/www/html

RUN git clone https://github.com/Dashticz/Dashticz 
RUN cd /var/www/html/Dashticz && cp -a ./ ./../ && cd ./.. && rm -rf ./Dashticz

EXPOSE 80
VOLUME /var/www/html/custom

