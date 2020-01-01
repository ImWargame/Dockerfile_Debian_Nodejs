FROM yoanndelattre/base:base-debian
LABEL MAINTAINER='Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"'
ENV NPM_CONFIG_LOGLEVEL=error
ENV PORT=80
RUN apt-get update && apt-get upgrade -y && \
      apt-get install curl software-properties-common -y && \
      curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
      apt-get install -y nodejs && \
      apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*
CMD node --version && /bin/bash
