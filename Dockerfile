FROM ubuntu:artful
COPY --from=gradle:jdk8-alpine /opt/gradle /opt/gradle
RUN \
    apt-get update && \
    apt-get -y install --no-install-recommends openjdk-8-jdk-headless nodejs npm curl graphviz && \
    ln -s "/opt/gradle/bin/gradle" /usr/bin/gradle && \
    rm -rf /var/lib/apt/lists/*
