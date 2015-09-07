FROM alpine:3.1
MAINTAINER Kyle James Walker <KyleJamesWalker@gmail.com>

ENV TORNAME tor-0.2.6.10

RUN apk add --update libgcc openssl-dev libevent-dev wget gcc make musl-dev && \
    wget https://www.torproject.org/dist/${TORNAME}.tar.gz --no-check-certificate -q -O /tmp/tor.tar.gz && \
    tar -zxvf /tmp/tor.tar.gz -C /tmp && \
    cd /tmp/${TORNAME} && \
    ./configure && make && make install && \
    rm -rf /tmp/tor.tar.gz && \
    rm -rf /tmp/${TORNAME} && \
    apk del libgcc openssl-dev libevent-dev wget gcc make musl-dev && \
    apk add openssl libevent && \
    rm -rf /var/cache/apk/* && \
    printf "Log notice stdout\nSocksPort 0.0.0.0:9150\n" >> /etc/torrc

EXPOSE 9050

CMD ["/usr/local/bin/tor", "-f", "/etc/torrc"]
