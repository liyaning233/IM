#!/usr/bin/env bash
set -euo pipefail

BASE="https://raw.githubusercontent.com/csbio-njupt/SEQ/HEAD"
URLS=(
  "$BASE/hub.txt"
  "$BASE/genomes.txt"
  "$BASE/hg38/trackDb.txt"
  "$BASE/hg38/PC3.channel1_tier1.ucsc.bb"
  "$BASE/hg38/PC3.channel2_annotated_tier1.ucsc.bb"
  "$BASE/hg38/PC3.joint_tier1_star.ucsc.bb"
  "$BASE/hg38/PC3.joint_tier1.ucsc.bb"
)

echo "Checking Track Hub URLs..."
for u in "${URLS[@]}"; do
  code=$(curl -L -s -o /dev/null -w '%{http_code}' "$u")
  echo "$code  $u"
done
