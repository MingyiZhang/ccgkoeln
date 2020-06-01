#!/bin/sh

set -e

SSH_PATH="/root/.ssh"
KEY_FILENAME="id_rsa"
mkdir -p "${SSH_PATH}"
chmod 700 "${SSH_PATH}"

echo "${DEPLOY_KEY_PRIVATE}" > "${SSH_PATH}/${KEY_FILENAME}"
chmod 600 "${SSH_PATH}/${KEY_FILENAME}"

cat "${SSH_PATH}/${KEY_FILENAME}"