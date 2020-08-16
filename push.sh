#!/bin/sh

source ./config.sh

sudo gsutil -m rsync -r "$REPOSITORY_PATH" "$BUCKET_URL"
