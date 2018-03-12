#!/usr/bin/env bash

set -ex

cd ~
git clone $PROJECT_GIT_URL $PROJECT_NAME
curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -c unstable -P $PROJECT_NAME -v $PACKAGE_VERSION
cd /home/omnibus/$PROJECT_NAME
$VERIFY_COMMAND