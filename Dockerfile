FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm
MAINTAINER 0xmutt
LABEL maintainer="0xmutt"
ENV TITLE=MuttLibation
ENV NO_FULL
RUN apt-get update
RUN apt-get install -y apt-transport-https wget firefox-esr
RUN wget https://github.com/0xmutt/MuttLibation/releases/download/v1.3/Libation.1.3-linux-chardonnay-amd64.deb
RUN dpkg --install Libation.1.3-linux-chardonnay-amd64.deb && rm Libation.1.3-linux-chardonnay-amd64.deb
COPY /root /
