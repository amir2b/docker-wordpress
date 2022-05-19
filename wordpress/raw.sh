#!/usr/bin/env bash

## change path to root of project
cd "$(dirname $0)/../"

## remove wordpress files
rm -rf wordpress/code/*
find wordpress/code/ -type f -exec rm {} \;

curl https://wordpress.org/latest.tar.gz --output /tmp/wordpress.tar.gz
tar -xzvf /tmp/wordpress.tar.gz -C wordpress/code/ --strip-components=1
