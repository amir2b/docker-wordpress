#!/usr/bin/env bash

## Change path to root of project
cd "$(dirname $0)/../"

read -p "Are you sure? [y/N] " -n 1 -r
echo
[[ ! $REPLY =~ ^[Yy]$ ]] && exit 1

## Remove wordpress files
rm -rf wordpress/code/
mkdir -p wordpress/code/

## Download and extract fresh wordpress
curl https://wordpress.org/latest.tar.gz --output /tmp/wordpress.tar.gz
tar -xzvf /tmp/wordpress.tar.gz -C wordpress/code/ --strip-components=1
rm /tmp/wordpress.tar.gz
