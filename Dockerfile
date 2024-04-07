FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm
MAINTAINER 0xmutt
LABEL maintainer="0xmutt"
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y wget
#RUN echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf
#RUN sysctl -p 
RUN wget https://github.com/0xmutt/MuttLibation/releases/download/v1.3/Libation.1.3-linux-chardonnay-amd64.deb
RUN dpkg --install Libation.1.3-linux-chardonnay-amd64.deb && rm Libation.1.3-linux-chardonnay-amd64.deb
