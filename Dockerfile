FROM node:0.10-slim

MAINTAINER Birkhoff Lee <admin@birkhoff.me>

ADD build.sh /
ADD run.sh /
RUN chmod +x /build.sh /run.sh

WORKDIR ~
RUN export NODE_ENV=production; \
    npm i -g forever coffee-script

CMD [ "coffee" ]