#!/bin/bash
#
# Delete old snapshots.

restic unlock -r /mnt/backup/restic -p /etc/restic/keyfile &
wait $!

restic forget \
  --repo=/mnt/backup/restic \
  --password-file=/etc/restic/keyfile \
  --prune \
  --keep-daily=14\
  --keep-weekly=8 \
  --keep-monthly=8 \
  --verbose

restic unlock -r /mnt/backup/restic -p /etc/restic/keyfile &
wait $!

restic prune \
  --repo=/mnt/backup/restic \
  --password-file=/etc/restic/keyfile \
  --verbose

