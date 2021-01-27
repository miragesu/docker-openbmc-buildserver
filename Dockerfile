FROM ubuntu:16.04
MAINTAINER Mirage Su <mirage.su@mic.com.tw>

RUN apt-get update \
 && apt-get install -y \
     locales \
     python3 \
     build-essential libsdl1.2-dev texinfo gawk chrpath diffstat \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Set the locale
#RUN locale-gen en_US.UTF-8

#COPY ./default_locale /etc/default/locale
#RUN chmod 755 /etc/default/locale

#ENV LC_ALL=en_US.UTF-8
#ENV LANG=en_US.UTF-8
#ENV LANGUAGE=en_US.UTF-8
