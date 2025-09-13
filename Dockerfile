FROM drakkan/sftpgo:2.6.x-alpine-slim

USER root
RUN apk add lighttpd

USER 1000
