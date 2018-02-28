#/bin/bash

case "$1" in
    create)
        docker-compose pull
        docker-compose up --build --remove-orphans -d scss
        docker-compose run scss compass --version | grep -Po "^Compass (\d+\.)+\d+" | sed 's!Compass !!g'
    ;;

    remove)
        docker-compose down --remove-orphans
    ;;

    test.compile)
        docker-compose run scss compass compile /app/public
    ;;

    test.watch)
        docker-compose run scss compass watch /app/public --poll
    ;;

    *)
        echo ""
        echo "- create          create all containers"
        echo "- remove          remove all containers"
        echo "- test.compile    test compass Compile"
        echo "- test.watch      test compass Watch"
        echo ""
    ;;
esac