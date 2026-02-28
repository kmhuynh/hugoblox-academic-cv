#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
EXPECTATIONS_FILE="${ROOT}/tests/site_expectations.txt"

if [[ ! -f "${EXPECTATIONS_FILE}" ]]; then
  echo "FAIL: missing expectations file ${EXPECTATIONS_FILE}"
  exit 1
fi

while IFS='|' read -r file needle; do
  [[ -z "${file}" || "${file:0:1}" == "#" ]] && continue

  target="${ROOT}/${file}"
  if [[ ! -f "${target}" ]]; then
    echo "FAIL: missing file ${file}"
    exit 1
  fi

  if ! rg -Fq "${needle}" "${target}"; then
    echo "FAIL: '${needle}' not found in ${file}"
    exit 1
  fi
done < "${EXPECTATIONS_FILE}"

echo "PASS: site layout expectations met"
