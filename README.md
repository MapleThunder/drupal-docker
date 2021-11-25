# Docker and Drupal Starter

This project will allow for quick startup of a Drupal 9 site using Docker.

## Setup

1. Create a `.env` file from the `.env.example` file.

2. If you are loading an existing Drupal 9 site, add the database dump file to the `sql/` directory.

3. Run `docker-compose up` to start the container

## Links for when the container is running

- [Site](http://localhost)

- [phpmyadmin](http://localhost:7777)

> NOTE: The DB_HOST value in the `.env` file **must** remain as "db". This points to the docker container running mysql.
