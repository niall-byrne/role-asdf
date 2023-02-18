#!/bin/bash

# .github/scripts/ansible_cache.sh
# Creates symlinks for attaching an external cache folder for Ansible.
# Separate folders for Ansible-Compat, and Molecule are maintained.

# 1: The absolute path of the mount point of the external cache folder.
# 2: The absolute path of the usage point of the cache on the system.

# CI only script

set -eo pipefail

main () {

  MOUNT_FOLDER="${1}"
  USAGE_FOLDER="${2}"

  mkdir -p "${MOUNT_FOLDER}/ansible-compat"
  mkdir -p "${MOUNT_FOLDER}/molecule"

  mkdir -p "${USAGE_FOLDER}"

  ln -sf "${MOUNT_FOLDER}/ansible-compat" "${USAGE_FOLDER}/ansible-compat"
  ln -sf "${MOUNT_FOLDER}/molecule" "${USAGE_FOLDER}/molecule"

  echo "Cache Symlinks Created:"
  echo "${MOUNT_FOLDER}/ansible-compat -> ${USAGE_FOLDER}/ansible-compat"
  echo "${MOUNT_FOLDER}/molecule -> ${USAGE_FOLDER}/molecule"

}

main "$@"
