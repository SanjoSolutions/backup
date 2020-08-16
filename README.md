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
  2. Add line `* * * * * /home/<NAME_OF_USER>/backup/cronjob.sh >> /var/log/backup/cronjob.log 2>&1`. This runs the backup task every minute.
