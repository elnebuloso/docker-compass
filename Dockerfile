FROM ubuntu:16.04
MAINTAINER jeff.tunessen@gmail.com

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

COPY docker-entrypoint.sh /usr/local/bin/

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
    && chmod +x /usr/local/bin/docker-entrypoint.sh \
    && apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/tmp/* \
    && rm -rf /usr/share/doc/* \
    && rm -rf /usr/share/man/* \
    && rm -rf /usr/share/locale/* \
    && rm -rf /tmp/*

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]