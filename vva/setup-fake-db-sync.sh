#!/bin/bash

docker run --name fake-db-sync-postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=v8hlDV0yMAHHlIurYupj -e POSTGRES_DB=vva  -p 7432:5432 -d postgres

docker cp schema.sql $(docker ps -aqf 'name=fake-db-sync-postgres'):/schema.sql

docker exec -u postgres -it $(docker ps -aqf 'name=fake-db-sync-postgres') psql -U postgres -d vva -f schema.sql
