#!/bin/sh

set -e

docker build -t qmstr/master master
docker build -t qmstr/dev dev
