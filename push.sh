#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"

sudo borg with-lock "$REPOSITORY_PATH" gsutil -q -m rsync -r "$REPOSITORY_PATH" "$BUCKET_URL"
