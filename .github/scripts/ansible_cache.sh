#!/bin/bash

# .github/scripts/ansible_cache.sh
# Creates symlinks for attaching an external cache folder for Ansible.
# Separate folders for Roles, and Collections are maintained.

# 1: The absolute path of the mount point of the external cache folder.
# 2: The absolute path of the usage point of the cache on the system.

# CI only script

set -eo pipefail

main () {

  MOUNT_FOLDER="${1}"
  USAGE_FOLDER="${2}"

  mkdir -p "${MOUNT_FOLDER}"

  ln -sf "${MOUNT_FOLDER}" "${USAGE_FOLDER}"

}

main "$@"
