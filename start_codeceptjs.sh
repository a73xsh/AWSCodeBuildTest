#!/bin/bash

set -ev

echo "test .... ${CODEBUILD_WEBHOOK_HEAD_REF}"
echo "branch.... ${BUILD_BRANCH}"