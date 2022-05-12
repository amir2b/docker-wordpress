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
