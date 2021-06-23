#!/bin/bash

set -eo pipefail

main() {

  pip install poetry
  poetry install

}

main "$@"
