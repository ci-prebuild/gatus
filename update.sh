#! /usr/bin/env bash

set -euo pipefail

GATUS_REPO="selfhoster1312/gatus"
GATUS_BRANCH="fork"

GATUS_REF="$(git ls-remote -b https://github.com/$GATUS_REPO refs/heads/$GATUS_BRANCH | cut -f1)"
echo "Updating to latest commit on $GATUS_REPO branch $GATUS_BRANCH: $GATUS_REF"

sed -i "s,GATUS_REPO: ".*",GATUS_REPO: \"$GATUS_REPO\"," .github/workflows/release.yml
sed -i "s,GATUS_REF: ".*",GATUS_REF: \"$GATUS_REF\"," .github/workflows/release.yml