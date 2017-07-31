# system
FROM ubuntu:16.04
MAINTAINER jeff.tunessen@gmail.com

# terminal
ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

# install ansible
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        software-properties-common \
        ca-certificates \
    && add-apt-repository ppa:brightbox/ruby-ng \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ruby2.4 \
        ruby2.4-dev \
        build-essential \
    && gem install compass \
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/tmp/* \
    && rm -rf /usr/share/doc/* \
    && rm -rf /usr/share/man/* \
    && rm -rf /usr/share/locale/* \
    && rm -rf /tmp/*

# change into /app for mounting project files
WORKDIR /app