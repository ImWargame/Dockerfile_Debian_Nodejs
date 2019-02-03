FROM yoanndelattre/base:base-debian
MAINTAINER Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"
ENV NPM_CONFIG_LOGLEVEL=error
ENV NODE_ENV=production
ENV PORT=80
ENV CONTEXT=production
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential curl -y
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs npm

#     <--clean installation-->
RUN apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*

VOLUME ["/mnt"]
EXPOSE 80
WORKDIR  /mnt
ENTRYPOINT apt-get update && apt-get upgrade -y && node --version && /bin/bash
