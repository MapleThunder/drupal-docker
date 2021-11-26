#!/bin/bash

echo "Initializing..."

if [ -f .env ]
then
  echo "A .env file was found, nothing needs to be done."
  exit 0
fi

export $(cat .env.example | sed 's/#.*//g' | xargs)
echo "Creating new .env file..."

read -p "Database Name [$DB_NAME]: " user_db_name
if [ "$user_db_name" = "" ]
then
  user_db_name=$DB_NAME
fi

read -p "Datbase User [$DB_USER]: " user_db_user
if [ "$user_db_user" = "" ]
then
  user_db_user=$DB_NAME
fi

echo "Database User Password [$DB_PASSWORD]: "
read -s user_db_password
if [ "$user_db_password" = "" ]
then
  user_db_password=$DB_NAME
fi

echo "Mysql Root Password [$MYSQL_ROOT_PASSWORD]: "
read -s user_mysql_root_password
if [ "$user_mysql_root_password" = "" ]
then
  user_mysql_root_password=$DB_NAME
fi

echo "DB_NAME=$user_db_name" >> .env
echo "DB_USER=$user_db_user" >> .env
echo "DB_PASSWORD=$user_db_password" >> .env
echo "DB_HOST=$DB_HOST" >> .env
echo "MYSQL_ROOT_PASSWORD=$user_mysql_root_password" >> .env
