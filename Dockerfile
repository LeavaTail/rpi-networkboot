FROM alpine:3.11.3
LABEL  maintainer "LeavaTail <starbow.duster@gmail.com>"

RUN set -x && \
    apk update && \
	apk --no-cache add dnsmasq

COPY dnsmasq.conf /etc/
EXPOSE 67/udp 69/udp
