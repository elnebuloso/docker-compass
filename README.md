# docker-compass

[![Docker Build Statu](https://img.shields.io/docker/build/elnebuloso/compass.svg)](https://hub.docker.com/r/elnebuloso/compass/builds/)


- Compass 1.0.3 (Polaris)


## Supported tags and respective `Dockerfile` links

- [`Dockerfile`](https://github.com/elnebuloso/docker-compass/blob/master/Dockerfile)
- https://hub.docker.com/r/elnebuloso/compass/tags/


### compass compile (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.1.0 compile -c public/scss/config.rb
```


### compass watch (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.1.0 watch -c public/scss/config.rb --poll
```


## docker-compose

```text
version: "2"

services:
  compass:
    image: elnebuloso/compass:1.1.0
    volumes:
      - .:/app
```

```text
docker-compose run compass compile -c public/scss/config.rb
docker-compose run compass watch -c public/scss/config.rb --poll
```


## Development


### build container

```text
docker-compose up --build -d
```


### test container

```text
docker-compose run compass
docker-compose run compass --version
docker-compose run compass compile -c public/scss/config.rb
docker-compose run compass watch -c public/scss/config.rb --poll
```