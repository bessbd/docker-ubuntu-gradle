FROM ubuntu:xenial

RUN \
    apt-get update && \
    apt-get -y install --no-install-recommends gradle && \
    rm -rf /var/lib/apt/lists/*