FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm
MAINTAINER 0xmutt
LABEL maintainer="0xmutt"
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y wget
#RUN echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf
#RUN sysctl -p 
RUN wget https://github.com/rmcrackan/Libation/releases/download/v11.1.0/Libation.11.1.0-linux-chardonnay-amd64.deb
RUN dpkg --install Libation.11.1.0-linux-chardonnay-amd64.deb && rm Libation.11.1.0-linux-chardonnay-amd64.deb
