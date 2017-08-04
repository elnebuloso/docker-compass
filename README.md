# docker-compass

[![Docker Build Statu](https://img.shields.io/docker/build/elnebuloso/compass.svg)](https://hub.docker.com/r/elnebuloso/compass/builds/)

- Compass 1.0.3 (Polaris)

## Supported tags and respective `Dockerfile` links

- [`Dockerfile`](https://github.com/elnebuloso/docker-compass/blob/master/Dockerfile)
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



## Development

### build container

```text
docker-compose up --build -d
```

### test container

```text
docker-compose run compass
docker-compose run ubuntu14 ansible --version
docker-compose run ubuntu14 ansible-playbook -i 'localhost,' -c local /etc/ansible/roles/demo-role/tests/test.yml
```