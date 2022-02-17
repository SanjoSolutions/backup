#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borg prune \
  --keep-within=2H \
  --keep-hourly=24 \
  --keep-daily=30 \
  --keep-monthly=12 \
  --keep-yearly=-1 \
  "$REPOSITORY_PATH"
