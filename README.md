# Docker and Drupal Starter

This project will allow for quick startup of a Drupal 9 site using Docker.

## Startup

1. Run `./startup.sh` to create a new `.env` file.

2. If you are loading an existing Drupal 9 site, add the database dump file to the `sql/` directory.

3. Run `docker-compose up` to start the container.

### Running Drush commands

Use the following command to access the container running drupal, where you will be able to use drush.

```cli
$ docker exec -it ddrupal-web /bin/bash

root@*:/opt# ./drush cr
```

### Links for when the container is running

- [localhost](http://localhost)

- [phpmyadmin](http://localhost:7777)

## Export the database

There is a script included that will dump the database from the container running mysql using the variables found in the `.env` file. To export the database run the `dump-db.sh` script from the root of the project.

```cli
./dump-db.sh
```
