#!/usr/bin/env bash
set -euo pipefail

git ls-files -z -- '*.md' | xargs -0 -r pymarkdown --disable-rules md013 scan --
git ls-files -z -- '*.yml' '*.yaml' | xargs -0 -r yamllint -d relaxed --

docker run --rm --user "$(id -u):$(id -g)" \
  --volume "$PWD:/repo:ro" --workdir /repo \
  ros:jazzy-ros-base bash scripts/ament-lint.sh
