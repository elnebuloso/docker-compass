# docker-compass

[![Docker Build Statu](https://img.shields.io/docker/build/elnebuloso/compass.svg)](https://hub.docker.com/r/elnebuloso/compass/builds/)


## Containers

- https://hub.docker.com/r/elnebuloso/compass/tags/


### compass watch

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.0.0 compass watch -c public/scss/config.rb --poll
docker run -v ${PWD}:/app elnebuloso/compass:latest compass watch -c public/scss/config.rb --poll
```


### compass compile

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.0.0 compass compile -c public/scss/config.rb
docker run -v ${PWD}:/app elnebuloso/compass:latest compass compile -c public/scss/config.rb
```


## using docker-compose

```text
version: "2"

services:
  ci:
    image: elnebuloso/compass:1.0.0
    volumes:
      - .:/app
```

```text
docker-compose run compass compass watch -c public/scss/config.rb --poll
docker-compose run compass compass compile -c public/scss/config.rb
```