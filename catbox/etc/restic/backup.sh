#!/bin/bash
#
# Backup local system.

restic unlock -r /mnt/hdd/restic -p /etc/restic/keyfile &
wait $!

/usr/bin/restic backup \
  --repo=/mnt/hdd/restic \
  --password-file=/etc/restic/keyfile \
  --tag="backup.sh" \
  --files-from=/etc/restic/include \
  --exclude-file=/etc/restic/exclude \
  --exclude-caches \
  --verbose
