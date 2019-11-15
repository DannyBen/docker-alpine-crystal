FROM alpine:edge

ENV PS1 "\n\n>> crystal \W \$ "

WORKDIR /app

ENV PACKAGES \
    ca-certificates \
    crystal \
    g++ \
    gc-dev \
    libc-dev \
    libevent-dev \
    libevent-static \
    libxml2-dev \
    llvm \
    llvm-dev \
    llvm-static \
    make \
    musl \
    musl-dev \
    musl-utils \
    openssl-dev \
    openssl-libs-static \
    pcre-dev \
    readline-dev \
    readline-static \
    shards \
    yaml-dev \
    zlib-dev \
    zlib-static

RUN apk add --update --no-cache --force-overwrite $PACKAGES

ENTRYPOINT ["crystal"]