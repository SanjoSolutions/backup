#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

borg key export --paper "$REPOSITORY_PATH" > ~/borg_key.txt
