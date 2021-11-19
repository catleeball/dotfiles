#!/bin/bash
#
# /etc/rand/getrand.random.org.sh
#
# Ask random.org for some random bits and mix them into rngd.
#

set -ex

TOKEN="$(cat /etc/rand/random.org.token)"

curl --tlsv1.2 --header "Content-Type: application/json" \
     --request POST \
     --data '{"jsonrpc":"2.0","method":"generateBlobs","params":{"apiKey":"$TOKEN","n":1,"size":4096,"format":"base64"},"id":19999}' \
     https://api.random.org/json-rpc/2/invoke \
     -s | jq -r .result.random.data[0] > /tmp/rand.bin
rngd -r /tmp/rand.bin
rm /tmp/rand.bin

