#!/bin/sh

echo "Waiting for InfluxDB to start..."

until nc -z localhost 8086; do
  sleep 1
done

echo "Creating database if not exists..."

influx -execute "CREATE DATABASE ShellyDB"

echo "Database created (if not existing)."
