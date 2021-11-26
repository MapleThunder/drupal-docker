#!/bin/bash

if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

datetime=$(date +"%Y-%m-%d")
dump_path="sql/dump_$datetime.sql";

if [ -f $dump_path ]
then
  rm -rf $dump_path
fi

docker exec -it $DB_HOST mysqldump -uroot -p$MYSQL_ROOT_PASSWORD $DB_NAME > $dump_path

# This is to remove the mysqldump warning that gets output about using a password
# on the commandline. If the error is left in it will prevent the dump from importing.
echo "$(tail -n +2 $dump_path)" > $dump_path
