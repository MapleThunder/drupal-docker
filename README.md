# Docker and Drupal Starter

This project will allow for quick startup of a Drupal 9 site using Docker.

## Setup

1. Create a `.env` file from the `.env.example` file.

2. If you are loading an existing Drupal 9 site, add the database dump file to the `sql/` directory.

3. Copy the `default.settings.php` file into a `settings.php` file and add the following code to the bottom:

```php
$databases['default']['default'] = [
  'database' => $_ENV["DB_NAME"],
  'username' => $_ENV["DB_USER"],
  'password' => $_ENV["DB_PASSWORD"],
  'host' => $_ENV["DB_HOST"],
  'port' => '3306',
  'driver' => 'mysql',
  'prefix' => '',
  'collation' => 'utf8mb4_general_ci',
];
```

4. Run `docker-compose up` to start the container.

> NOTE: When setting up the database the host will need to be `db` because it points to the container mysql is running on. If setting up a new site it won't allow you to proceed unless the host manually changed from the default of `localhost`.

### Links for when the container is running

- [Site](http://localhost)

- [phpmyadmin](http://localhost:7777)

## Export the database

Run the following command to export the database in the mysql container. Replace `[:MYSQL_ROOT_PASSWORD:]` and `[:DB_NAME:]` with the one defined in the `.env` file.

```cli
docker exec -it ddrupal-db mysqldump -uroot -p[:MYSQL_ROOT_PASSWORD:] [:DB_NAME:] > sql/dump.sql
```

### Example using values from `.env.example`

```cli
docker exec -it ddrupal-db mysqldump -uroot -pthisisapassword drupal > sql/dump.sql
```
