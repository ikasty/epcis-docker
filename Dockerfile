FROM maven:3.3-jdk-8
MAINTAINER ikasty <ikasty@kaist.ac.kr>
WORKDIR /usr

# add new database - 'RUN git clone <url> epcis-<target>'
RUN git clone https://github.com/JaewookByun/epcis.git epcis-mongo

# change configure file
RUN sed -i 's/localhost/mongodb/' /usr/epcis-mongo/epcis/src/main/webapp/WEB-INF/Configuration.json

# default target is mongodb
ENV TARGET mongo

# copy
VOLUME /usr/webapp
CMD cd /usr/epcis-$TARGET/epcis && \
	mvn install && \
	cp ./target/epcis.war /usr/webapp
