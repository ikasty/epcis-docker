Docker environment for EPCIS
============================

## How to use
1. Install Docker
2. Run container (`docker run --link your_mongodb_name:mongo -it --rm ikasty/epcis`)

If you have custom code for EPCIS, add it to `source` folder. For your convenience, `docker-compose.yml` file is served. Type `docker-compose up`.
