#!/bin/bash
set -e

function start_dgraph() {
    dgraph zero --port_offset -2000 &
    dgraph server --memory_mb=2048 --zero=localhost:5080 &
}

function start_dgraph_web {
    dgraph-ratel &
}

start_dgraph

if [ "$1" = 'dev' ]; then
    start_dgraph_web
fi

exec /go/bin/qmstr-master