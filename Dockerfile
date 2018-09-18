FROM yoanndelattre/base:base-debian
MAINTAINER Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"
RUN apt-get update && apt-get upgrade -y
RUN git config --global user.email "yoanndelattre21@gmail.com"
RUN git config --global user.name "ImWargame"
RUN apt-get install nodejs -y
RUN apt-get install build-essential libssl-dev -y

#     <--clean installation-->
RUN apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*

VOLUME ["/mnt"]
EXPOSE 80 443
WORKDIR  /mnt
ENTRYPOINT apt-get update && apt-get upgrade -y && /bin/bash
