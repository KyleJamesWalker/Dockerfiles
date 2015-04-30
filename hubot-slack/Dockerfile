FROM alpine:3.1
MAINTAINER Kyle James Walker <KyleJamesWalker@gmail.com>

RUN apk add --update git nodejs && \
    npm install -g hubot coffee-script yo generator-hubot && \
    adduser -D -h /code -s /bin/sh hubot && \
    rm -rf /var/cache/apk/*

USER hubot
WORKDIR /code

RUN yo hubot \
       --owner="KyleJamesWalker@gmail.com" \
       --name="captain" \
       --description="HuBot for LA Engineers" \
       --adapter="slack" \
       --defaults && \
    npm install hubot-slack --save

CMD ["bin/hubot", "-a", "slack"]
