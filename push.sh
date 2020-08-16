#!/bin/sh

source ./config.sh

sudo borgbackup with-lock "$REPOSITORY_PATH" gsutil -m rsync -r "$REPOSITORY_PATH" "$BUCKET_URL"
