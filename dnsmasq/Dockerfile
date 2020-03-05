FROM alpine:3.11.3
LABEL  maintainer "LeavaTail <starbow.duster@gmail.com>"

RUN set -x && \
    apk update && \
    apk --no-cache add dnsmasq

EXPOSE 67/udp 69/udp
