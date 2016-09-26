Docker environment for EPCIS
============================

# How to use
1. Install Docker
2. Build Maven image from Dockerfile (`docker build . -t epcis`)
3. Build epcis Maven app to epcis folder (`docker run -it --rm -v $(pwd)/epcis:/usr/src/webapp epcis`)
4. Run app (`docker-compose up`)

Makefile is served for your convenience