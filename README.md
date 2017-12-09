# docker-compass

Compass SCSS Container


## docker hub

See Supported Tags at https://hub.docker.com/r/elnebuloso/compass/tags/


#### Supported tags and respective `Dockerfile` links

- [`1` `1.0` `1.0.3` (Dockerfile)](https://github.com/elnebuloso/docker-compass/blob/master/Dockerfile)

See full project details at https://github.com/elnebuloso/docker-compass


## compass compile (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass compass compile /app/public
```


## compass watch (example)

```text
docker run -v ${PWD}:/app elnebuloso/compass compass compile /app/public --poll
```