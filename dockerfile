FROM ubuntu:20.04

WORKDIR  /opt/facebooc


COPY . .

RUN apt-get -y update && \
    apt-get install -yq build-essential make libsqlite3-dev sqlite3 


RUN make all

EXPOSE 16000

CMD bin/facebooc