FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y --no-install-recommends install vlc && rm -rf /var/lib/apt/lists/*
ADD startvlc.sh /usr/local/bin/
ENV PASSWORD=changeme
ENV RC_PORT=2255

ENTRYPOINT ['/usr/local/bin/startvlc.sh']
