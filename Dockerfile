FROM ubuntu:xenial

RUN \
    apt-get update && \
    apt-get -y install --no-install-recommends openjdk-8-jdk-headless nodejs npm && \
    npm install -g @angular/cli && \
    rm -rf /var/lib/apt/lists/*
