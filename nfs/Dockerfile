FROM alpine:3.11.3
LABEL  maintainer "LeavaTail <starbow.duster@gmail.com>"

RUN set -x && \
    apk update && \
    apk --no-cache add nfs-utils

WORKDIR /srv/rootfs
EXPOSE 2049/tcp
COPY exports /etc/exports

ENTRYPOINT ["/bin/sh"]
