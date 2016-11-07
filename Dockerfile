FROM ikasty/tomcat-maven-alpine:jdk8-tomcat7
MAINTAINER ikasty <ikasty@kaist.ac.kr>

RUN apk add --update --no-cache --virtual .build git

RUN git clone https://github.com/JaewookByun/epcis.git /usr/src/epcis

# change configure file
RUN sed -i 's/localhost/mongodb/' /usr/src/epcis/epcis/src/main/webapp/WEB-INF/Configuration.json

# install
RUN cd /usr/src/epcis/epcis/ && \
	mvn install && \
	cp /usr/src/epcis/epcis/target/epcis.war /usr/local/tomcat/webapps/ && \
	rm -rf /usr/src/epcis

RUN apk del .build