#!/bin/bash

set -ev

echo "test .... ${CODEBUILD_WEBHOOK_HEAD_REF}"
echo "branch.... ${BUILD_BRANCH}"

groupadd --system nightmare 
useradd --system --create-home --gid nightmare nightmare
groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser 
mkdir -p /home/pptruser/Downloads 
chown -R pptruser:pptruser /home/pptruser

rm test.exe || echo "test finish"
ls -lah