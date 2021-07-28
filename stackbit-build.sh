#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://dev-api.stackbit.com/pull/6100b438f7cee900be61a8d1

# build site
hugo

echo "stackbit-build.sh: finished build"
