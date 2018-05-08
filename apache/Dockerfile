FROM alpine:latest

RUN apk add --no-cache apache2 apache2-ssl
RUN mkdir -p /run/apache2

EXPOSE 80/tcp 443/tcp

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
