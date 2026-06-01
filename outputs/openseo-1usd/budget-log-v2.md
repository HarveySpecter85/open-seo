# DataForSEO $1 Budget Log — FNSG B2B Pivot (v2)

Starting balance: $1.00 (1000 credits)
Hard cap: $0.92 (revised from $0.85 by Harvey 2026-05-31)
Buffer floor: $0.08

**Note:** This is `budget-log-v2.md`. The original `budget-log.md` was edit-locked by sandbox isolation after the Phase 2 Edit. Both files contain the same Phase 1 data; v2 has the complete Phase 2 anchor.

## Phase 1 — Diagnostic research

| # | Phase | MCP tool | Args | Cost ($) | Cumulative ($) | Notes |
|---|---|---|---|---|---|---|
| 0 | — | (baseline) | — | 0.00 | 0.00 | starting point |
| 1 | 1 | list_projects | — | 0.000 | 0.000 | Free tool. 3 "Default" projects, no FNSG project. Using cd1a13a1-7ee2-417a-8420-49e8515dc829 as scoping ID. |
| 2 | 1 | get_domain_overview | firstnationalstaffing.com, loc=2840 | 0.025 (est) | 0.025 | organicTraffic=329/mo, organicKeywords=194. |
| 3 | 1 | get_domain_keyword_suggestions | firstnationalstaffing.com | 0.045 (est) | 0.070 | 100 keywords returned. |
| 4 | 1 | get_backlinks_overview | firstnationalstaffing.com | 0.000 | 0.070 | ERROR: Backlinks not enabled. No credit consumed. |

### Phase 1 ground-truth anchor (2026-06-01)

| Field | Value |
|---|---|
| Starting balance | $1.0000 |
| Balance after Phase 1 | $0.8914 |
| **Actual Phase 1 spend** | **$0.1086** |
| MCP-estimated | $0.0700 |
| Estimate error | -35% |

## Phase 2 — Keyword research (8 seeds)

| # | Phase | MCP tool | Seed | Est cost ($) | Est cumulative ($) | Notes |
|---|---|---|---|---|---|---|
| 5 | 2 | research_keywords | warehouse staffing agency atlanta | 0.050 | 0.120 | source=ideas, fallback=true, 150 rows (20 in topRows) |
| 6 | 2 | research_keywords | 3PL staffing partner | 0.050 | 0.170 | source=ideas, fallback=true. Tokenized on "partner" → wasted spend on B2B partner-program terms. |
| 7 | 2 | research_keywords | temporary labor warehouse georgia | 0.050 | 0.220 | source=ideas, fallback=true. Mostly jobseeker warehouse-jobs terms. |
| 8 | 2 | research_keywords | staffing kpis | 0.050 | 0.270 | source=related, fallback=FALSE. HR-content wedge confirmed. |
| 9 | 2 | research_keywords | recycling staffing company | 0.050 | 0.320 | source=ideas, fallback=true. Recycling vertical did NOT surface. |
| 10 | 2 | research_keywords | hospitality staffing atlanta hotel | 0.050 | 0.370 | source=ideas, fallback=true. Hotel brand career searches only. |
| 11 | 2 | research_keywords | staffing agency mcdonough | 0.050 | 0.420 | source=related, fallback=FALSE. Atlanta-suburb cluster. |
| 12 | 2 | research_keywords | staffing agency forest park | 0.050 | 0.470 | source=related, fallback=FALSE. Near-duplicate of seed #7. |

**Mid-phase check after seed #4:** balance $0.6390 (spend so far $0.2524). Well below halt threshold. Continued.

### Phase 2 ground-truth anchor (2026-06-01)

| Field | Value |
|---|---|
| Balance before Phase 2 | $0.8914 |
| Balance after Phase 2 | $0.4390 |
| **Actual Phase 2 spend** | **$0.4524** |
| MCP-estimated | $0.4000 (8 × $0.050) |
| Estimate error | -12% (under, but closer than Phase 1's -35%) |
| Per-seed actual cost | $0.0566 (~57 credits) |
| Cumulative actual spend (P1+P2) | **$0.5610** of $0.92 cap |
| **Remaining headroom** | **$0.3590** |
| Hard floor before pause | $0.08 |

**Calibration:** research_keywords costs ~$0.057/seed actual. Future budgeting should use this figure, not the $0.050 estimate.
