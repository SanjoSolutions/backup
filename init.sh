#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

borg init \
  --encryption=keyfile-blake2 \
  --make-parent-dirs \
  "$REPOSITORY_PATH"
