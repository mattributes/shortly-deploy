#!/usr/bin/env bash

PEM_FILE_PATH="../HRShortly.pem"
SERVER_SCRIPTS_NAME="server_side_deploy.sh"

echo "Runnig script on server"
ssh -i $PEM_FILE_PATH ec2-user@52.26.229.1 'chmod +x ./'$SERVER_SCRIPTS_NAME'; ./'$SERVER_SCRIPTS_NAME';'
echo ""
echo "DONE"
echo ""