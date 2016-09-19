app:
	docker build -t epcis . && docker run -it --rm -v $(pwd)/epcis:/usr/src/webapp epcis
	docker-compose build
	docker-compose up