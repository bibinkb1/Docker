FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
ADD sample.html /var/www/html
CMD apachectl -D FOREGROUND
ENTRYPOINT apachectl -D FOREGROUND
ENV name apache2
