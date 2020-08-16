#!/bin/sh

source ./config.sh

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borgbackup list "$REPOSITORY_PATH"
