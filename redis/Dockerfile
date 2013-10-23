# redis image
# VERSION 0.1

FROM ubuntu:12.10
MAINTAINER Joshua Barratt jbarratt@serialized.net

RUN apt-get -qq update
RUN apt-get install -y redis-server

EXPOSE 6379
CMD ["/usr/bin/redis-server"]
