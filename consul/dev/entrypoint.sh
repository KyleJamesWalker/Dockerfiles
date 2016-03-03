#!/bin/sh

set -e

# Remove old consul run data
rm -rf /data/*

# Run consul agent and send to background
/bin/consul agent \
      -config-dir="/config" \
      -data-dir=/data \
      -ui-dir="/ui" \
      -dc="localdev" \
      -server \
      -client=0.0.0.0 \
      -join=127.0.0.1 \
      -bootstrap-expect=1 &

set +e

# Wait for a leader to be elected
while [ -z "$(/bin/consul info | grep 'leader = true' | xargs)" ]; do
  sleep 1
done

# Set configuration keys
for f in `find /keys/ -type f`; do
  curl -X PUT --data-binary "@$f" http://localhost:8500/v1/kv/${f#/keys/}
  echo " Created ${f#/keys/} consul key"
done

# Don't exit, wait until all background tasks are finished
wait
