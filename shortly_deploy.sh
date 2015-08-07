#!/usr/bin/env bash

cd ./shortly-deploy/
git pull

npm install

cd ..
mkdir -p ./shortly-server

rsync -avz --exclude .git ./shortly-deploy/ ./shortly-server
# cp -r ./shortly-deploy/. ./shortly-server/

cd ./shortly-server

forever stop server.js
PORT=4568 forever start server.js
