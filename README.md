# docker-wordpress

Fresh Wordpress in docker

## Setup

Install [docker](https://docs.docker.com/engine/install/ubuntu)

Install [docker-compose](https://docs.docker.com/compose/install)

`PROJECT_DIR` is project root directory.

```shell
mkdir ${PROJECT_DIR}
cd ${PROJECT_DIR}

sudo apt update -y
sudo apt install -y git make nano

git clone git@github.com:amir2b/docker-wordpress.git .

make init
```

## Run

```shell
cd ${PROJECT_DIR}
make start
```

#### Web UI:

* Site: http://127.0.0.1
* PhpMyAdmin: http://127.0.0.1:81

## Usefull commands

```shell
make
make up
make down
make start
make restart
make logs
```

## Environment

* SITE_NAME: wordpress
* WORDPRESS_PORT: 80
* WORDPRESS_VERSION: 5.9
* MYSQL_DATABASE
* MYSQL_USER
* MYSQL_PASSWORD
* MYSQL_ROOT_PASSWORD
* MYSQL_PORT: 3306
* MYSQL_VERSION: 8.0
* PHPMYADMIN_PORT: 81
