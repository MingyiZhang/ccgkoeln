#!/bin/sh

set -e

SSH_PATH="/root/.ssh"
KEY_FILENAME="id_rsa"
mkdir -p "${SSH_PATH}"
chmod 700 "${SSH_PATH}"

echo "${DEPLOY_KEY_PRIVATE}" > "${SSH_PATH}/${KEY_FILENAME}"
chmod 600 "${SSH_PATH}/${KEY_FILENAME}"

echo "Setting git config globally"
echo "${GITHUB_ACTOR}"
git config --global user.email "${EMAIL}"
git config --global user.name "Mingyi Zhang"
git config --global core.sshCommand 'ssh -o IdentitiesOnly=yes -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /root/.ssh/id_rsa -F /dev/null'


printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

cd "${GITHUB_WORKSPACE}"/public
git checkout master
git add .
git commit -m "rebuild site at $(date)"
git push origin master
