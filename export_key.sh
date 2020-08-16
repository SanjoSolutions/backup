#!/bin/sh

source ./config.sh

borg key export --paper "$REPOSITORY_PATH" > ~/borg_key.txt
