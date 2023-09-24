#!/bin/bash
mkdir bin
curl -L https://github.com/input-output-hk/cardano-node/releases/download/8.1.2/cardano-node-8.1.2-macos.tar.gz > bin/cardano-node-macos.tar.gz
cd bin
tar -xzvf cardano-node-macos.tar.gz
