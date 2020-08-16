#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borg list "$REPOSITORY_PATH"
