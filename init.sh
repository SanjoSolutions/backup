#!/bin/sh

source ./config.sh

borg init \
  --encryption=keyfile-blake2 \
  --make-parent-dirs \
  "$REPOSITORY_PATH"
