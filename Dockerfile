FROM ubuntu:artful

RUN \
    apt-get update && \
    apt-get -y install --no-install-recommends openjdk-8-jdk-headless nodejs npm curl unzip zip && \
    npm install -g @angular/cli && \
    npm install -g protractor && \
    webdriver-manager update && \
    curl -o sdkman.sh -s "https://get.sdkman.io" && \
    bash sdkman.sh && \
    source "/root/.sdkman/bin/sdkman-init.sh" && \
    sdk install gradle 4.6 && \
    rm -rf /var/lib/apt/lists/*
