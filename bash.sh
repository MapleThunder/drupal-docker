#!/bin/bash

if [ ! -f .env ]
then
  echo "A .env file is required to run the container."
  exit 1
fi

export $(cat .env | sed 's/#.*//g' | xargs)
docker exec -it $DB_HOST /bin/bash
