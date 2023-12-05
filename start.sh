#!/bin/bash

npx hardhat node
sleep 10
echo "Hardhat start hogaya"
npx hardhat run --network localhost scripts/deploy.js > ./client/.env
echo "Contract deployed"
echo "Starting client ......."
cd client
npm run start