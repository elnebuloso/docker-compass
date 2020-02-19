# docker-compass

Dockerized Compass SCSS Container

## github

- https://github.com/elnebuloso/docker-compass

## docker

- https://hub.docker.com/r/elnebuloso/compass
- https://hub.docker.com/r/elnebuloso/compass/tags

## compass compile (example)

```text
docker run -v ${PWD}:/app -w /app elnebuloso/compass compass compile /app/public/scss
```

## compass watch (example)

```text
docker run -v ${PWD}:/app -w /app elnebuloso/compass compass watch /app/public/scss --poll
```

## container development

```
# start
docker-compose up --build --remove-orphans -d

# compile
docker-compose run main compass compile /app/public

# watch
docker-compose run main compass watch /app/public --poll

# stop
docker-compose down --remove-orphans
```