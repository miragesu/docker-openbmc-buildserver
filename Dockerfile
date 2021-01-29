FROM ubuntu:18.04
MAINTAINER Mirage Su <mirage.su@mic.com.tw>

RUN apt-get update \
 && apt-get install -y \
     locales \
     git \
     python3 \
     build-essential libsdl1.2-dev texinfo gawk chrpath diffstat \
     cpio wget \
     curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ARG user=autobuild
ARG group=autobuild
ARG uid=1000
ARG gid=1000
ARG AUTOBUILD_HOME=/home/autobuild

RUN mkdir -p $AUTOBUILD_HOME \
  && chown ${uid}:${gid} $AUTOBUILD_HOME \
  && groupadd -g ${gid} ${group} \
  && useradd -d "$AUTOBUILD_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.UTF-8

USER ${user}
