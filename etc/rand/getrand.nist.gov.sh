#!/bin/bash

set -ex

curl -s --tlsv1.2 https://beacon.nist.gov/beacon/2.0/pulse/time/$(date '+%s') | jq -r .pulse.localRandomValue > /tmp/nist.bin
rngd -r /tmp/nist.txt
rm /tmp/nist.txt

