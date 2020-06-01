#!/bin/sh

set -e

SSH_PATH="/root/.ssh"
KEY_FILENAME="id_rsa"
mkdir -p "${SSH_PATH}"
chmod 700 "${SSH_PATH}"

echo "${DEPLOY_KEY_PRIVATE}" > "${SSH_PATH}/${KEY_FILENAME}"
chmod 600 "${SSH_PATH}/${KEY_FILENAME}"

echo "Setting git config globally"
git config --global user.email "${EMAIL}"
git config --global user.name "${GITHUB_ACTOR}"


printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

cd "${GITHUB_WORKSPACE}"/public
git checkout master
git add .
git commit -m "rebuild site at $(date)"
git push origin master
