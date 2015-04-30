FROM alpine:3.1
MAINTAINER Kyle James Walker <KyleJamesWalker@gmail.com>

RUN apk add --update redis && rm -rf /var/cache/apk/*

RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

EXPOSE 6379
CMD ["redis-server"]
