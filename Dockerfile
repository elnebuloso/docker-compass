FROM alpine
MAINTAINER jeff.tunessen@gmail.com

RUN apk add --update \
        ruby \
        ruby-dev \
        libffi-dev \
        build-base \
    && gem install \
        listen \
        sass \
        compass --no-ri --no-rdoc \
    && apk del \
        build-base \
        libffi-dev \
        ruby-dev \
    && rm -rf /var/cache/apk/*

#ENV TERM linux
#ENV DEBIAN_FRONTEND noninteractive
#
#RUN apt-get update \
#    && apt-get install -y --no-install-recommends \
#        software-properties-common \
#        ca-certificates \
#    && add-apt-repository ppa:brightbox/ruby-ng \
#    && apt-get update \
#    && apt-get install -y --no-install-recommends \
#        ruby2.4 \
#        ruby2.4-dev \
#        build-essential \
#        libffi-dev \
#    && gem install compass \
#    && apt-get -y autoremove \
#    && apt-get -y clean \
#    && rm -rf /var/cache/apt/archives/* \
#    && rm -rf /var/lib/apt/lists/* \
#    && rm -rf /var/tmp/* \
#    && rm -rf /usr/share/doc/* \
#    && rm -rf /usr/share/man/* \
#    && rm -rf /usr/share/locale/* \
#    && rm -rf /tmp/*

CMD ["sh"]