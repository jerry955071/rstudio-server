#!/bin/bash
# use bash strict mode
set -euo pipefail

# find empty port (start from 8787)
PORT=8787
while :; do
    if [[ -n $(ss -tulpn | grep :$PORT) ]]; then
        PORT=$(( $PORT + 1 ))
    else
        break
    fi
done

# make .env file
echo "# created $(date +%Y%m%d-%H:%M:%S)" > .env
echo "TZ=$(cat /etc/timezone)" >> .env
echo "USERID=$(id -u)" >> .env
echo "GROUPID=$(id -g)" >> .env
echo "LOCAL=$HOME" >> .env
echo "PORT=$PORT" >> .env

# start docker compose
docker compose up -d 
echo -e "Notes:\n\tStarting Rstudio server at: http://localhost:$PORT"
echo -e '\tTo stop the server, run: `docker compose down`'
echo -e '\tTo see logs, run: `docker compose logs -f`'
echo -e '\tDocker compose commands should be run in the same directory as the compose file\n'
echo "Streaming logs... [Ctrl+C to exit]"
docker compose logs -f
    
