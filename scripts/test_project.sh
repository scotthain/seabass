#!/usr/bin/env bash

set -ex

cd ~
git clone $PROJECT_GIT_URL $PROJECT_NAME
cd /home/omnibus/$PROJECT_NAME
$VERIFY_COMMAND