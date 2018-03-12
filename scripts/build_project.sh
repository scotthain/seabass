#!/usr/bin/env bash

set -ex

cd ~
git clone $PROJECT_GIT_URL $PROJECT_NAME
if [ -d /home/omnibus/$PROJECT_NAME/omnibus ]; then
  OMNIBUS_DIR=/home/omnibus/$PROJECT_NAME/omnibus
else
  OMNIBUS_DIR=/home/omnibus/$PROJECT_NAME
fi

cd $OMNIBUS_DIR
bundle install --without development
bundle exec omnibus build $PROJECT_NAME -l debug --override cache_suffix:$PROJECT_NAME
mkdir outputs
cp $OMNIBUS_DIR/pkg/* outputs