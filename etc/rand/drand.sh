#!/bin/bash

set -ex

TMP="/tmp/drand.txt"

echoerr() { >&2 echo "$@"; exit 1; }

/home/cat/.local/go/bin/drand-client \
  --chain-hash 8990e7a9aaed2ffed73dbd7092123d6f289930540d7651336225dc172e51b2ce \
  --url http://api.drand.sh \
  --url http://api2.drand.sh \
  --url http://api3.drand.sh \
  --url https://drand.cloudflare.com \
  --relay /dnsaddr/api.drand.sh \
  --relay /dnsaddr/api2.drand.sh \
  --relay /dnsaddr/api3.drand.sh | awk '{print $2}' > "$TMP"

if [ -s "$TMP" ]; then
  rngd -r "$TMP"
  rm "$TMP"
else
  echoerr "File $TMP is empty or does not exist."
fi

