#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/config.sh"
LOG_PATH='/var/log/backup/backup.log'

if grep -qs "$BACKUP_VOLUME" /proc/mounts; then
  mkdir -p "$(dirname $LOG_PATH)" >> "$LOG_PATH" 2>&1 && \
  echo 'Pruning...' >> "$LOG_PATH" && \
  "$DIR/prune.sh" |& while IFS= read -r line; do printf '%s %s\n' "$(date)" "$line"; done >> "$LOG_PATH" && \
  echo 'Backing up...' >> "$LOG_PATH" && \
  "$DIR/backup.sh" |& while IFS= read -r line; do printf '%s %s\n' "$(date)" "$line"; done >> "$LOG_PATH" && \
  echo 'Pushing...' >> "$LOG_PATH" && \
  "$DIR/push.sh" |& while IFS= read -r line; do printf '%s %s\n' "$(date)" "$line"; done >> "$LOG_PATH"
fi
