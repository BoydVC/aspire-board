#!/usr/bin/env bash
# Aspire Copa Board: build the offline snapshot, then serve on 127.0.0.1:4282.
#   ./run.sh           build + serve
set -euo pipefail
cd "$(dirname "$0")"
PORT=4282
python3 build.py
if ss -ltn | grep -q "127.0.0.1:$PORT "; then echo "already serving on http://127.0.0.1:$PORT/"; else
  nohup python3 server.py > /tmp/aspire-board-$PORT.log 2>&1 &
  sleep 1; echo "serving http://127.0.0.1:$PORT/ (pid $!)  ·  offline file: dist/aspire-board.html"; fi
