FROM maven:3.3-jdk-8
MAINTAINER ikasty <ikasty@kaist.ac.kr>
WORKDIR /usr

RUN git clone https://github.com/JaewookByun/epcis.git
WORKDIR /usr/epcis/epcis

# change configure file
RUN rm /usr/epcis/epcis/src/main/webapp/WEB-INF/Configuration.json
COPY Configuration.json /usr/epcis/epcis/src/main/webapp/WEB-INF/

# install epcis
RUN mvn install

# copy
VOLUME /usr/webapp
CMD cp ./target/epcis.war /usr/webapp

# docker build -t epcis . && docker run -it --rm -v ~/Repository/oliot-test/epcis:/usr/webapp epcis