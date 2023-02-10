#!/bin/bash

# .github/scripts/build.sh
# Builds the Python environment to test the project.

# CI only script

set -eo pipefail

main() {

  pip install poetry
  poetry install

}

main "$@"
