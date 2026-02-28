#!/usr/bin/env bash
set -euo pipefail

if rg -n "Start here|hub-card|hub-quick-links|name: Research|name: Publications|name: Contact" \
  content/_index.md config/_default/menus.yaml assets/css/custom.css; then
  echo "FAIL: forbidden restore markers found"
  exit 1
fi

echo "PASS: no forbidden hub-era markers"
