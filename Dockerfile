FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm
MAINTAINER 0xmutt
LABEL maintainer="0xmutt"
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y firefox-esr wget
RUN wget https://github.com/rmcrackan/Libation/releases/download/v11.1.0/Libation.11.1.0-linux-chardonnay-amd64.deb
RUN dpkg --install Libation.11.1.0-linux-chardonnay-amd64.deb && rm Libation.11.1.0-linux-chardonnay-amd64.deb
