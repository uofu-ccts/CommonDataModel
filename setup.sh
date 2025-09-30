#!/bin/bash

docker rm -f omop-postgres
docker run --name omop-postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=omop_cdm \
  -v "$(pwd)/postgresql":/docker-entrypoint-initdb.d \
  -p 5432:5432 \
  -d postgres:13