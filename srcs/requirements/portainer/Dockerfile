FROM debian:buster


RUN apt-get update -y && apt-get install -y wget tar && \
    wget https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz  && \
    tar xvzf portainer-2.16.2-linux-amd64.tar.gz && rm -f portainer-2.16.2-linux-amd64.tar.gz


ENTRYPOINT ["/portainer/portainer"]

