FROM alpine:latest

copy startvlc.sh /usr/local/bin/startvlc.sh
ENV PASSWORD=changeme
ENV RC_PORT=2255
RUN apk add vlc bash
RUN adduser -D vlc
USER vlc

ENTRYPOINT ["/usr/local/bin/startvlc.sh"]
