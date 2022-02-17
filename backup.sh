#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borg create \
  --one-file-system \
  --exclude-from excluded_paths.txt \
  "$REPOSITORY_PATH::$(date +'%Y-%m-%d-%H%M%S')" \
  /mnt/c 
