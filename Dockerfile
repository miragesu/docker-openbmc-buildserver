FROM ubuntu:16.04
MAINTAINER Mirage Su <mirage.su@mic.com.tw>

RUN apt-get update \
 && apt-get install -y \
     locales \
     git \
     python3 \
     build-essential libsdl1.2-dev texinfo gawk chrpath diffstat \
     cpio wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.UTF-8
