#!/usr/bin/env bash

set -ex

mkdir -p /var/cache/omnibus
chmod 777 /var/cache/omnibus
projects=( angrychef chef harmony )
for i in "${projects[@]}"
do
  mkdir -p /opt/$i
  chown omnibus /opt/$i
done