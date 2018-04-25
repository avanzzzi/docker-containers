FROM alpine:latest

RUN apk add --no-cache apache2
RUN mkdir -p /run/apache2

EXPOSE 80/tcp 443/tcp
VOLUME ["/var/www/localhost", "/var/www/iznv.com", "/etc/apache2"]

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
