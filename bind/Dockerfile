FROM alpine:latest

RUN apk add --no-cache bind

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-g"]
