#! /bin/bash
if [ -f ../.env ]; then
    # Load Environment Variables
    export $(cat ../.env | grep -v '#' | sed 's/\r$//'  )
fi

docker exec --user root -it ${APP_NAME}_app /bin/bash;