#!/bin/bash
set -e

java_path="$(/usr/libexec/java_home)"
tmp="$(mktemp -d)"

pushd "$tmp" > /dev/null
curl -O -L -s --cookie "oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip

unzip -qq jce_policy-8.zip

sudo cp Unlimited*/*policy.jar "$java_path/jre/lib/security/"

popd > /dev/null

# clean up
rm -fr "$tmp"
