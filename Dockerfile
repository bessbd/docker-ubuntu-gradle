FROM gradle:jdk8-alpine as gradle

FROM ubuntu:artful
COPY --from=gradle /opt/gradle /opt/gradle
RUN \
    apt-get update && \
    apt-get -y install --no-install-recommends openjdk-8-jdk-headless nodejs npm  && \
    npm install -g @angular/cli && \
    npm install -g protractor && \
    webdriver-manager update && \
    ln -s "/opt/gradle/bin/gradle" /usr/bin/gradle && \
    rm -rf /var/lib/apt/lists/*
