#!/usr/bin/env bash
set -euo pipefail

base=${1:?expected base SHA}
head=${2:?expected head SHA}
range="$base..$head"
if [[ "$base" =~ ^0+$ ]]; then
  range="$head"
fi

commits=$(git rev-list "$range")
failed=0
for commit in $commits; do
  author=$(git show -s --format='%an <%ae>' "$commit")
  trailers=$(git show -s --format='%(trailers:key=Signed-off-by,valueonly,unfold)' "$commit")
  if ! grep -Fxq -- "$author" <<< "$trailers"; then
    echo "Missing author Signed-off-by trailer in $commit ($author)" >&2
    failed=1
  fi
done
exit "$failed"
