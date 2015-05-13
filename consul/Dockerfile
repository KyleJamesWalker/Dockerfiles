FROM alpine:3.1
MAINTAINER Kyle James Walker <KyleJamesWalker@gmail.com>

RUN apk add --update libgcc wget go git gcc musl-dev && \
    GOPATH=/go go get gopkg.in/hashicorp/consul.v0 && \
    cd /bin && \
    GOPATH=/go go build gopkg.in/hashicorp/consul.v0 && \
    mv consul.v0 consul && \
    rm -rf /go && \
    wget http://dl.bintray.com/mitchellh/consul/0.5.0_web_ui.zip -q -O /tmp/webui.zip && \
    unzip /tmp/webui.zip -q -d /tmp && \
    mv /tmp/dist /ui && rm -rf /tmp/webui.zip && \
    apk del libgcc wget go git gcc musl-dev && \
    rm -rf /var/cache/apk/*

ADD ./config /config

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp
VOLUME ["/data", "/config"]

ENTRYPOINT ["/bin/consul"]
CMD []

