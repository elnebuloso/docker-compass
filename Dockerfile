FROM alpine
MAINTAINER jeff.tunessen@gmail.com

RUN apk add --update \
        grep \
        sed \
        ruby \
        ruby-dev \
        libffi-dev \
        build-base \
    && gem install \
        listen \
        sass \
        compass \
    && apk del \
        build-base \
        libffi-dev \
        ruby-dev \
    && rm -rf /var/cache/apk/*

CMD ["sh"]