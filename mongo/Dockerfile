FROM debian:jessie
MAINTAINER ikasty <ikasty@kaist.ac.kr>

RUN apt-get update
RUN apt-get install -y wget

ENV mongodb_ver linux-x86_64-debian81-3.2.9

WORKDIR /var
RUN wget https://fastdl.mongodb.org/linux/mongodb-${mongodb_ver}.tgz -O mongodb.tgz
RUN tar xzf mongodb.tgz

WORKDIR /data/db

EXPOSE 27017
CMD /var/mongodb-${mongodb_ver}/bin/mongod