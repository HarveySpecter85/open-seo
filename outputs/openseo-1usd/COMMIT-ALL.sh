#!/usr/bin/env bash
# Combined commit script — Phases 2 + 2.5 + 3 of the OpenSEO-1usd research
#
# Why this script exists:
#   Three Claude Code sessions (P2, P2.5, P3) all hit the same macOS TCC
#   restriction — getcwd() and .git reads are denied to the Claude bash
#   sandbox for /Users/harveymcm1/Documents/. Every artifact is on disk
#   and correct, but the agent could not run git commands. This script
#   stages everything and creates ONE atomic commit covering P2 + P2.5 + P3.
#
#   Supersedes the prior COMMIT-INSTRUCTIONS-PHASE2-P25.sh (which is now
#   obsolete — DO NOT run that one; this combined script covers all three).
#
# What it does:
#   1. cd into the OpenSEO project root
#   2. git status --short to show current state
#   3. git add outputs/openseo-1usd/ (only Phase 1+2+2.5+3 artifacts — no
#      stray files from elsewhere)
#   4. git commit with multi-line HEREDOC message
#   5. git log --oneline -3 to show what landed
#
#   Idempotent: if there is nothing to commit it just says so and exits 0
#   (safe to re-run).
#
# Run:
#   bash /Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/COMMIT-ALL.sh
# or:
#   chmod +x /Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/COMMIT-ALL.sh
#   ./outputs/openseo-1usd/COMMIT-ALL.sh   (from project root)

set -euo pipefail

REPO_ROOT="/Users/harveymcm1/Documents/Projects/Open-SEO"
cd "$REPO_ROOT"

echo "=== Working dir: $(pwd) ==="
echo
echo "=== git status BEFORE ==="
git status --short

echo
echo "=== Staging outputs/openseo-1usd/ + action backlog ==="
git add outputs/openseo-1usd/
git add docs/superpowers/specs/2026-06-01-openseo-1usd-action-backlog.md 2>/dev/null || true

# Idempotency check: if nothing staged, exit cleanly.
if git diff --cached --quiet; then
  echo
  echo "Nothing to commit (outputs/openseo-1usd/ has no changes). Exiting 0."
  exit 0
fi

echo
echo "=== Files staged ==="
git diff --cached --stat

echo
echo "=== Creating commit ==="
git commit -m "$(cat <<'EOF'
research(openseo-1usd): phase 2 + 2.5 + 3 — B2B keyword shortlist with SERP validation

One atomic commit covering three sequential research phases (none landed
individually due to a Claude Code TCC sandbox lock on /Users/harveymcm1/
Documents/ — every phase artifact is on disk and correct, only `git`
ops were blocked).

Phase 2 (8 research_keywords seeds, $0.4524 real spend):
- 126-keyword universe, 11-keyword shortlist after filtering
- Standout: temp agency atlanta (3040 vol, KD 5, Fulton)
- HR-content wedge confirmed (kpi template KD 0 / $9.66 CPC, etc.)
- One wasted seed: 3PL staffing partner tokenized on "partner" alone
  (~$0.057 lost on unrelated B2B-partner-program terms)

Phase 2.5 (2 research_keywords seeds, $0.1028 real spend):
- industrial staffing atlanta + manufacturing temp agency
- +1 shortlist entry: industrial staffing atlanta ga (10 vol, KD 37,
  Fulton) — the FIRST warehousing/industrial vertical-modifier buyer
  term to pass filters across all 10 seeds
- Structural finding: industrial/manufacturing vertical-modifier B2B
  search volumes are < 50/mo in Atlanta — too thin to anchor primary
  SEO strategy on
- FNSG project created in OpenSEO via direct D1 SQL insert (wrangler
  d1 execute — no web-UI/MCP project-create endpoint exists)
  projectId: fb94f661-42a7-4ffa-b254-322688a2bb4b

Phase 3 (5 SERP probes + 5 save_keywords calls, $0.0655 real spend):
- 5 SERPs validated: temp agency atlanta (buyer_clear KEEP), staffing
  kpis (content_dominated KEEP — HR wedge structurally validated),
  labor solutions (brand_name_namespace_collision DROP), staffing
  agency mcdonough (buyer_clear KEEP + pattern replicable to
  Stockbridge/Hapeville/Conyers/Forest Park), labor finders near me
  (brand_navigational_jobseeker DROP — laborfinders.com owns 9 of
  top 10)
- 12 keywords saved to OpenSEO with full tag scheme:
  [fnsg-shortlist-v1, b2b] + per-cluster tags (buyer+near-me /
  buyer+fulton / buyer+henry / buyer+brand-conflict / hr-content+wedge)
- Saved view: /p/fb94f661-42a7-4ffa-b254-322688a2bb4b/saved
- Critical methodology finding: keyword-tool KD scores do NOT detect
  brand-name namespace collisions. Two shortlist keywords (labor
  solutions, labor finders near me) appeared viable (KD 12-15) but
  SERP probes revealed structural barriers invisible to the keyword
  tool. Always SERP-validate buyer-intent terms before LP investment.

Cumulative spend across all phases: $0.7293 of $0.92 cap.
Final buffer: $0.1907 (20.7% under cap).

Top 5 real FNSG B2B organic competitors identified:
  Atlanta/Fulton buyer SERPs: expresspros.com, insightglobal.com,
  focuspeople.com, laborstaffing.com (regional incumbents own rank 1-3)
  HR-content wedge: bullhorn.com (dominant), rhythmsystems.com,
  ascen.com, activatestaff.com (all beatable with operator-angle data)

Strategic stack: HR-content wedge (top-funnel volume) + hyper-local
suburb LPs (bottom-funnel qualified leads) + vertical LPs
(trust/conversion, not primary SEO driver).

Note: Original budget-log.md (P0+P1+P2) became inaccessible to Claude
tools mid-session due to macOS TCC ACL drift. Phase 2.5 detail was
appended to budget-log-p25.md; Phase 3 consolidated everything into
budget-log-final.md (this is now the authoritative budget ledger —
the original budget-log.md still exists but cannot be opened by Claude).

Also lands the 30/60/90 action backlog synthesis at
docs/superpowers/specs/2026-06-01-openseo-1usd-action-backlog.md — the
strategic synthesis of all three phases into concrete next actions
(temp-agency-atlanta LP + GBP, HR-content wedge pillar, hyper-local
suburb LP suite, kill list cleanup, rank tracking, AI-search audit).

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>
EOF
)"

echo
echo "=== git log -3 ==="
git --no-pager log --oneline -3

echo
echo "=== Done. Commit landed. ==="
