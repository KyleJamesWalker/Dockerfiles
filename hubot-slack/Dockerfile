FROM alpine:3.1
MAINTAINER Kyle James Walker <KyleJamesWalker@gmail.com>

RUN apk add --update git nodejs && \
    npm install -g hubot coffee-script yo generator-hubot underscore && \
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
    npm install hubot-slack --save && \
    npm install --save hubot-auth && \
    npm install --save hubot-victory && \
    npm install --save hubot-voting && \
    npm install --save underscore

# Copy the scripts folder and do the npm installs of any external scripts
COPY ./config/scripts /code/scripts
COPY ./config/external-scripts.json /code/external-scripts.json

CMD ["bin/hubot", "-a", "slack"]
