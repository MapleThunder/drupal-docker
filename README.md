# DDrupal Test site

Practicing getting a local Drupal instance running in a docker container.

## Local Environment

Make sure to have Docker installed, then run the following commands (in the same directory as this README).

1. Build the local Drupal docker image

> This creates the container `maplethunder/ddrupal` that the `docker-compose.yml` file refers to.

```cli
docker build -t maplethunder/ddrupal .
```

1. Start the local development environment with Docker Compose.

```cli
docker-compose up -d
```

After the environment is running, you can visit http://localhost

## Install Drupal

```cli
docker-compose exec drupal bash -c 'drush site:install standard --db-url="mysql://drupal:$DRUPAL_DATABASE_PASSWORD@$DRUPAL_DATABASE_HOST/drupal" --site-name="sitename" -y'
```

TODO Add `--existing-configs` once there are configs exported.

## Drush commands

To run drush commands the following command must be used:
```docker-compose exec drupal bash -c 'drush cr'```
