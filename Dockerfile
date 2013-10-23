FROM ubuntu
MAINTAINER Joshua Barratt jbarratt@serialized.net

RUN apt-get -qq update
RUN apt-get install -y python3

ADD talk /talk

EXPOSE 8080:8080
WORKDIR /talk
CMD ["python3", "-m", "http.server", "8080"]
