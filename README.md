# Backup

This work is devoted to God.

## Setup

1. `cp config.template.sh config.sh`
2. Set variables in `config.sh`.
3. `./init.sh`
4. `./export_key.sh`
5. Print or save `~/borg_key.txt` to a save location.
6. Configure cronjob:
  1. `sudo crontab -e`
  2. Add line `0 */1 * * * if grep -qs /mnt/<NAME_OF_BACKUP_VOLUME> /proc/mounts; /home/<NAME_OF_USER>/backup/prune.sh && /home/<NAME_OF_USER>/backup/backup.sh && /home/<NAME_OF_USER>/backup/push.sh; fi`
