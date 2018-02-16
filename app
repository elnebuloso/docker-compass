#/bin/bash

case "$1" in
    start)
        docker-compose pull
        docker-compose up --build --remove-orphans -d scss
        docker-compose run scss compass --version | grep -Po "^Compass (\d+\.)+\d+" | sed 's!Compass !!g'
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

    *)
        clear
        echo ""
        echo "- start           Start all containers"
        echo "- stop            Stop all containers"
        echo "- test.compile    Test Compass Compile"
        echo "- test.watch      Test Compass Watch"
        echo ""
    ;;
esac