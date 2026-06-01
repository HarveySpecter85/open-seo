#!/usr/bin/env bash
# Phase 2 + 2.5 commit script — RUN THIS YOURSELF, HARVEY
#
# Why: the Claude Code session hit the same macOS TCC restriction the controller
# had — `getcwd()` and `.git` directory reads are denied to the agent's bash
# sandbox for /Users/harveymcm1/Documents/. Every artifact is on disk, every
# Phase 2.5 output is correct — but `git add` / `git commit` cannot run from
# inside the Claude session. Open Terminal yourself and run this script.
#
# What it does:
#   1. cd into the OpenSEO project
#   2. Verify .planning/ and outputs/ state
#   3. Stage Phase 2 + 2.5 outputs
#   4. Show diff, ask for confirmation, then commit
#
# To run:
#   bash /Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/COMMIT-INSTRUCTIONS-PHASE2-P25.sh

set -euo pipefail

cd /Users/harveymcm1/Documents/Projects/Open-SEO

echo "=== git status BEFORE ==="
git status --short

echo
echo "=== Staging outputs/openseo-1usd/ ==="
git add outputs/openseo-1usd/

echo
echo "=== git status AFTER staging ==="
git status --short

echo
echo "=== Files staged ==="
git diff --staged --stat

echo
read -p "Proceed with commit? (y/N) " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Aborted. Run 'git restore --staged outputs/' to unstage if you want to redo."
  exit 1
fi

git commit -m "$(cat <<'EOF'
research(openseo-1usd): phase 2 + 2.5 keyword shortlist with FNSG project

Phase 2 (8 seeds, $0.4524 real spend): 126-keyword universe, 11-keyword
shortlist after filtering. Standout: temp agency atlanta (3040 vol, KD 5,
Fulton). HR-content wedge confirmed (kpi template KD 0 $9.66 CPC).

Phase 2.5 (2 seeds — industrial staffing atlanta + manufacturing temp
agency, $0.1028 real spend): added 1 keyword to shortlist (final size: 12,
target range 10-15). New addition: "industrial staffing atlanta ga"
(10 vol, KD 37, Fulton) — first warehousing/industrial vertical-modifier
buyer term to pass filters across all 10 seeds.

Critical structural finding from P2.5: industrial/manufacturing
vertical-modifier B2B search volumes are < 50/mo in Atlanta —
too thin to anchor SEO strategy on. FNSG organic plan must lean on
generic local/near-me buyer terms (with vertical-positioned content),
HR-content wedge for top-funnel, and hyper-local LPs for bottom-funnel.

FNSG project created in OpenSEO via direct D1 insert
(wrangler d1 execute, no web UI/MCP endpoint for project-create):
projectId=fb94f661-42a7-4ffa-b254-322688a2bb4b for Phase 3 save_keywords.

Real Phase 2 + 2.5 spend: $0.5552.
Cumulative (P1+P2+P2.5): $0.6638 of $0.92 cap. Headroom $0.2562 for Phase 3.

Note: budget-log.md (P0+P1+P2) became inaccessible to Claude tools mid-
session due to macOS TCC ACL drift (no com.apple.macl xattr). Phase 2.5
budget delta was appended to budget-log-p25.md sibling instead. Consult
both files for full budget audit trail.

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>
EOF
)"

echo
echo "=== git log -1 ==="
git --no-pager log -1 --stat
EOF
