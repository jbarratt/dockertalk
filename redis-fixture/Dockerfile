# redis image with Database info
# VERSION 0.1

FROM jbarratt/redis-dockerfile
MAINTAINER Joshua Barratt jbarratt@serialized.net

ADD fixtures.sh /tmp/fixtures.sh
RUN /tmp/fixtures.sh

CMD /usr/bin/redis-server
