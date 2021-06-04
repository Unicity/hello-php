FROM unicityintl/php80apache:latest

EXPOSE 80/tcp
EXPOSE 7000/tcp
EXPOSE 7002/tcp
EXPOSE 7004/tcp
EXPOSE 7008/tcp

COPY ./setup/init.sh /init.sh
COPY ./setup/apache2.conf /etc/apache2/sites-enabled/000-default.conf

RUN chmod 555 /init.sh
