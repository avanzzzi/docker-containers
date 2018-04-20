FROM alpine:latest

RUN apk add --no-cache bind

#COPY entrypoint.sh /sbin/entrypoint
#RUN chmod +x /sbin/entrypoint

EXPOSE 53/udp 53/tcp
VOLUME ["/etc/bind"]

#ENTRYPOINT ["/sbin/entrypoint"]
CMD ["/usr/sbin/named", "-g"]
