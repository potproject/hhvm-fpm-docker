FROM hhvm/hhvm:latest

LABEL maintainer "potproject <https://github.com/potproject>"

RUN mkdir -p /var/www/public

ADD server.ini /etc/hhvm/server.ini

EXPOSE 9000

CMD ["/usr/bin/hhvm", "-m", "server", "-c", "/etc/hhvm/server.ini"]
