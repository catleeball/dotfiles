#!/bin/bash

set -ex

TMP=/tmp/nist.txt

echoerr() { >&2 echo "$@"; exit 1; }

curl -s --tlsv1.2 https://beacon.nist.gov/beacon/2.0/pulse/time/$(date '+%s') | jq -r .pulse.localRandomValue > $TMP

if [ -s "$TMP" ]; then
  rngd -r "$TMP"
  rm "$TMP"
else
  echoerr "File $TMP is empty or does not exist."
fi

