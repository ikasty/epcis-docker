build:
	docker build -t epcis .

mongo: build
	docker run -it --rm -v $(pwd)/epcis:/usr/src/webapp epcis

mysql: build
	docker run -it --rm -v $(pwd)/epcis:/usr/src/webapp -e TARGET=mysql epcis

run:
	docker-compose build
	docker-compose up | cat