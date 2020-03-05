FROM alpine:3.11.3
LABEL  maintainer "LeavaTail <starbow.duster@gmail.com>"

RUN set -x && \
    apk update && \
    apk --no-cache add nfs-utils

EXPOSE 2049/tcp
