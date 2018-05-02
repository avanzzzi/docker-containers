FROM alpine:latest

RUN apk add --no-cache bind

EXPOSE 53/udp 53/tcp
VOLUME ["/etc/bind"]

CMD ["/usr/sbin/named", "-g"]
