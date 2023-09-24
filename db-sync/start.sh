PGPASSFILE=config/pgpass-preprod bin/cardano-db-sync \
    --config config/preprod-config.yaml \
    --socket-path ../cardano-node/node.sock \
    --state-dir ledger-state/preprod \
    --schema-dir schema/
