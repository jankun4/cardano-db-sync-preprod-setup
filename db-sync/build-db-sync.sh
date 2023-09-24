#!/bin/bash

cd cardano-db-sync
git checkout 13.1.1.3 -b tag-13.1.1.3
nix build -v .#cardano-db-sync -o db-sync-node
cp db-sync-node/bin/cardano-db-sync ../bin/cardano-db-sync
cd ..


