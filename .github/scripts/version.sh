#!/bin/bash

# .github/scripts/version.sh
# Ensures the 'pyproject.toml' version matches the current Git Tag.

# BRANCH_OR_TAG:      The name of the current Git Branch or Tag.

# CI only script.

set -eo pipefail

main() {
  if [[ "$(poetry version -s)" != "${BRANCH_OR_TAG}" ]]; then
    echo "The 'pyproject.toml' file does not match the version tag!"
    exit 127
  fi
}

main  "$@"
