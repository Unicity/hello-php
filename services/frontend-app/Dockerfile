FROM unicityintl/php80apache:latest

EXPOSE 80/tcp

COPY ./setup/init.sh /init.sh
COPY ./setup/apache2.conf /etc/apache2/sites-enabled/000-default.conf

RUN chmod 555 /init.sh
