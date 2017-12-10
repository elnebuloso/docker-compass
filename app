#/bin/bash

case "$1" in
    start)
        docker-compose pull
        docker-compose up --build --remove-orphans -d scss
        docker-compose run scss compass --version
    ;;

    stop)
        docker-compose down --remove-orphans
    ;;

    test.compile)
        docker-compose run scss compass compile /app/public
    ;;

    test.watch)
        docker-compose run scss compass watch /app/public --poll
    ;;

    create)
        docker build --pull -t compass-latest -f Dockerfile .
        docker run -v ${PWD}:/app compass-latest compass compile /app/public
        docker run compass-latest compass --version
    ;;

    push)
        clear

        docker tag compass-latest elnebuloso/compass:1.0.3
        docker tag compass-latest elnebuloso/compass:1.0
        docker tag compass-latest elnebuloso/compass:1
        docker tag compass-latest elnebuloso/compass

        docker push elnebuloso/compass:1.0.3
        docker push elnebuloso/compass:1.0
        docker push elnebuloso/compass:1
        docker push elnebuloso/compass
    ;;

    *)
        clear
        echo ""
        echo "- start           Start all containers"
        echo "- stop            Stop all containers"
        echo "- test.compile    Test Compass Compile"
        echo "- test.watch      Test Compass Watch"
        echo "- create          Create Images"
        echo "- push            Push Images"
        echo ""
    ;;
esac