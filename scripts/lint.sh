#!/usr/bin/env bash
set -euo pipefail

git ls-files -z -- '*.md' | xargs -0 -r pymarkdown --disable-rules md013 scan --
git ls-files -z -- '*.yml' '*.yaml' | xargs -0 -r yamllint -d relaxed --
git ls-files -z -- '*.py' '*.pyi' | xargs -0 -r ruff check --
