# docker-compass

Compass SCSS Container


## docker hub

See Supported Tags at https://hub.docker.com/r/elnebuloso/compass/tags/


## compass compile (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass compass compile /app/public
```


## compass watch (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass compass watch /app/public --poll
```