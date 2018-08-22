#!/bin/bash

stop_server() {
  ./server stop -d="/usr/src/app/data"
}

trap 'stop_server' SIGTERM

./server -d="/usr/src/app/data" --no_wal &

wait $!
