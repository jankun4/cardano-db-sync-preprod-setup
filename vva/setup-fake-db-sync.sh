#!/bin/bash

docker run --name fake-db-sync-postgres -e POSTGRES_USER=test -e POSTGRES_PASSWORD=test -e POSTGRES_DB=vva  -p 7432:5432 -d postgres

docker cp schema.sql $(docker ps -aqf 'name=fake-db-sync-postgres'):/schema.sql

sleep 5

docker exec -u postgres -it $(docker ps -aqf 'name=fake-db-sync-postgres') psql -U postgres -d vva -f schema.sql
