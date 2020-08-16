#!/bin/sh

source ./config.sh

sudo BORG_PASSPHRASE="$BORG_PASSPHRASE" borg create \
  --one-file-system \
  "$REPOSITORY_PATH"::$(date +"%Y-%m-%d-%H%M%S") \
  /bin \
  /boot \
  /etc \
  /home \
  /lib \
  /lib32 \
  /lib64 \
  /libx32 \
  /opt \
  /root \
  /sbin \
  /snap \
  /srv \
  /usr \
  /var/backups \
  /var/lib \
  /var/local \
  /var/log \
  /var/mail \
  /var/metrics \
  /var/opt \
  /var/snap \
  /var/spool
