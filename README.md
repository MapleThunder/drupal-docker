# Docker and Drupal Starter

This project will allow for quick startup of a Drupal 9 site using Docker.

## Setup

1. Create a `.env` file from the `.env.example` file.

2. If you are loading an existing Drupal 9 site, add the database dump file to the `sql/` directory.

3. Run `docker-compose up` to start the container

> NOTE: When setting up the database the host will need to be `db` because it points to the container mysql is running on. If setting up a new site it won't allow you to proceed unless the host manually changed from the default of `localhost`.

## Links for when the container is running

- [Site](http://localhost)

- [phpmyadmin](http://localhost:7777)
