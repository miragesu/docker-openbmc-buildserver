FROM ubuntu:16.04
MAINTAINER Mirage Su <mirage.su@mic.com.tw>

RUN apt-get update \
 && apt-get install -y \
     locales \
     python3 \
     build-essential libsdl1.2-dev texinfo gawk chrpath diffstat \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8
