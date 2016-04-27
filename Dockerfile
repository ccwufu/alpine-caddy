FROM alpine:edge
MAINTAINER ZZROT LLC <docker@zzrot.com>

RUN apk --no-cache add caddy tini

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

#USER caddy

EXPOSE 80

ENTRYPOINT ["tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
