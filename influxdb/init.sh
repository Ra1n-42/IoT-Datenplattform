#!/bin/sh

echo "Waiting for InfluxDB to start..."

until nc -z localhost 8086; do
  sleep 1
done

echo "Creating database if not exists..."

influx -execute "CREATE DATABASE mydatabase"

echo "Database created (if not existing)."
