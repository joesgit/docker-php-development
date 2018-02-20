# PHP Development Environment

A quick way to set up a PHP development environment on any machine with Docker (have not tested yet):

## Includes

-- PHP

-- Apache

-- MySQL

-- phpMyAdmin

## Installation

First, download and install Docker from here:
```
https://www.docker.com/community-edition#/download
```

If you are not developing on a Mac, you may need to install "Compose" separately:
```
https://docs.docker.com/compose/install/
```

Clone this repo into a directory (ie. develop/).  Within the folder run the command:
```
docker-compose up -d
```

This will create php/apache, mysql, and phpmyadmin docker containers will run in the background.

You can view the projects/ files by going to localhost:8080.

phpMyAdmin can be accessed at localhost:9090.

## Example - Setting up a Wordpress project:

-- Copy your Wordpress website files into the projects directory.  (ie. example.test/)

-- Create a new VirtualHost within the apache/ folder for your Wordpress website.

-- Create or import the website database within phpMyadmin.  (localhost:9090)

-- The database hostname for this environment is "mysql".  In the wp-config.php file, set the "DB_HOST" to "mysql".  You can also use the environment variable "WORDPRESS_DB_HOST".

-- Since web pages are viewed on port 8080, make one more update in the wp-config.php file. Add ":8080" next to your "WP_HOME" and "WP_SITEURL" urls.

-- Run docker-compose up -d to start development!
