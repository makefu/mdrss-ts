#!/bin/sh
echo "starting migration"
until bun migrate;do
  echo "migration failed, retrying in 5s"
  sleep 5
done
echo "starting backend"
bun start
