#!/bin/bash

docker run --name db-sync-postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=v8hlDV0yMAHHlIurYupj -e POSTGRES_DB=cexplorer  -p 6432:5432 -d postgres

sleep 3

cd cardano-db-sync
chmod 0600 config/pgpass-preprod
PGPASSFILE=config/pgpass-preprod scripts/postgresql-setup.sh --createdb
