#! /bin/bash
if [ -f ../.env ]; then
    # Load Environment Variables
    # shellcheck disable=SC2046
    export $(cat ../.env | grep -v '#' | sed 's/\r$//'  )
fi

docker exec --user root -it "${APP_NAME}"_app /bin/bash;