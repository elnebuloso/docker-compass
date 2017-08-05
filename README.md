# docker-compass

[![Docker Build Statu](https://img.shields.io/docker/build/elnebuloso/compass.svg)](https://hub.docker.com/r/elnebuloso/compass/builds/)

- Compass 1.0.3 (Polaris)

## Supported tags and respective `Dockerfile` links

- https://hub.docker.com/r/elnebuloso/compass/tags/
- [`Dockerfile`](https://github.com/elnebuloso/docker-compass/blob/master/Dockerfile)

### compass compile (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.0.0 compass compile public
```

### compass watch (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass:1.0.0 compass watch public --poll
```

## docker-compose (example)

```text
version: "2"

services:
  scss:
    image: elnebuloso/compass:1.0.0
    volumes:
      - .:/app
```

```text
docker-compose run scss compass compile public
docker-compose run scss compass watch public --poll
```

## Development

### build container

```text
docker-compose up --build -d
```

### test container

```text
docker-compose run scss
docker-compose run scss compass --version
docker-compose run scss compass compile public
docker-compose run scss compass watch public --poll
```

### local build test

```text
docker build -t foo .
docker run -v ${PWD}/public:/app/public foo:latest compass compile public
docker run -v ${PWD}/public:/app/public foo:latest compass watch public --poll
```