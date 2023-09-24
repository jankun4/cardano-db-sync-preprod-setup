# download binaries for cardano node

cd cardano-node
chmod +x download-binaries.sh
./download-binaries.sh
cd -


# run cardano node

cd cardano-node
chmod +x start.sh
./start.sh
cd -

# build db sync

cd db-sync
chmod +x build-db-sync.sh
./build-db-sync.sh
cd -

# create database

cd db-sync
chmod +x setup-postgres.sh
./setup-postgres.sh
cd -

# run db sync

cd db-sync
chmod +x start.sh
./start.sh
