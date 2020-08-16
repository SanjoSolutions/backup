#!/bin/sh

source ./config.sh

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borgbackup prune \
  --keep-within=24H \
  --keep-daily=30 \
  --keep-monthly=12 \
  --keep-yearly=-1 \
  "$REPOSITORY_PATH"
