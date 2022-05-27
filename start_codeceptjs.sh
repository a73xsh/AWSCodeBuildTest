#!/bin/bash

set -ev

export BUILD_BRANCH=stage
export current_env=$BUILD_BRANCH

echo "TEST -------------------- ${current_env}"

codebuild_id=$CODEBUILD_BUILD_ID

echo "URL project ${CODEBUILD_LOG_PATH}"

echo "codebuild ID ${codebuild_id}"

echo "Clouwatch URL ${CODEBUILD_LOG_PATH}"

echo "test .... ${CODEBUILD_WEBHOOK_HEAD_REF}"
echo "branch.... ${BUILD_BRANCH}"

groupadd --system nightmare 
useradd --system --create-home --gid nightmare nightmare
groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser 
mkdir -p /home/pptruser/Downloads 
chown -R pptruser:pptruser /home/pptruser

rm test.exe || echo "test finish"
ls -lah

#aws codebuild batch-get-builds --ids ${codebuild_id}
