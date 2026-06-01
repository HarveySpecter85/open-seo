# DataForSEO $1 Budget Log — FNSG B2B Pivot

Starting balance: $1.00 (1000 credits)
Hard cap: $0.92 (revised from $0.85 by Harvey 2026-05-31)
Buffer floor: $0.08

| # | Phase | MCP tool | Args | Cost (credits) | Cost ($) | Cumulative ($) | Notes |
|---|---|---|---|---|---|---|---|
| 0 | — | (baseline) | — | 0 | 0.00 | 0.00 | starting point |
| 1 | 1 | list_projects | — | 0 | 0.000 | 0.000 | 3 "Default" projects (null domains). No FNSG project. Using id=cd1a13a1-7ee2-417a-8420-49e8515dc829 as scoping project for paid calls. Free tool. |
| 2 | 1 | get_domain_overview | firstnationalstaffing.com, loc=2840, lang=en | ~25 (est) | 0.025 | 0.025 | organicTraffic=329/mo, organicKeywords=194, backlinks/refDomains=null (Backlinks API not enabled). MCP response did not expose raw `cost` field — using tool-description estimate. |
| 3 | 1 | get_domain_keyword_suggestions | firstnationalstaffing.com, loc=2840, lang=en (no limit param in schema) | ~45 (est) | 0.045 | 0.070 | Returned 100 keywords (schema has no limit field). Position/searchVolume/traffic/cpc/kd captured. |
| 4 | 1 | get_backlinks_overview | firstnationalstaffing.com, scope=domain | 0 | 0.000 | 0.070 | ERROR: "Backlinks is not enabled for the connected DataForSEO account". No credit consumed. Backlinks section will be N/A in phase1-analysis. |

## Phase 1 ground-truth anchor (via DataForSEO /v3/appendix/user_data, 2026-06-01)

| Field | Value |
|---|---|
| Starting balance (money.total) | $1.0000 |
| Balance after Phase 1 (money.balance) | $0.8914 |
| **Actual Phase 1 spend** | **$0.1086** |
| MCP-estimated Phase 1 spend | $0.0700 |
| Estimate error | -35% (under-estimated) |
| Remaining budget under $0.92 cap | **$0.7314** |
| Hard floor before pause | $0.08 (i.e. balance must stay above $0.08) |

**Adjustment for future phases:** MCP estimates run ~35% low. Treat plan cost estimates as a floor, expect actual ~1.35× higher. Re-anchor via DataForSEO user_data after each phase.

## Phase 2 — Keyword research (8 seeds)

| # | Phase | MCP tool | Args | Cost (credits, est) | Cost ($, est) | Cumulative ($, est) | Notes |
|---|---|---|---|---|---|---|---|
| 5 | 2 | research_keywords | seed=warehouse staffing agency atlanta, loc=2840 | ~50 | 0.050 | 0.120 | source=ideas, usedFallback=true, 150 rows (20 in topRows preview). High-vol commercial terms surfaced. |
| 6 | 2 | research_keywords | seed=3PL staffing partner, loc=2840 | ~50 | 0.050 | 0.170 | source=ideas, usedFallback=true. Algorithm tokenized on "partner" → unrelated B2B partner-program terms. Wasted spend. |
| 7 | 2 | research_keywords | seed=temporary labor warehouse georgia, loc=2840 | ~50 | 0.050 | 0.220 | source=ideas, usedFallback=true. Mostly jobseeker "warehouse jobs [city]" terms. |
| 8 | 2 | research_keywords | seed=staffing kpis, loc=2840 | ~50 | 0.050 | 0.270 | source=related, usedFallback=FALSE. HR-content wedge confirmed. |
| 9 | 2 | research_keywords | seed=recycling staffing company, loc=2840 | ~50 | 0.050 | 0.320 | source=ideas, usedFallback=true. Recycling vertical did not surface. |
| 10 | 2 | research_keywords | seed=hospitality staffing atlanta hotel, loc=2840 | ~50 | 0.050 | 0.370 | source=ideas, usedFallback=true. Hotel brand career searches only. |
| 11 | 2 | research_keywords | seed=staffing agency mcdonough, loc=2840 | ~50 | 0.050 | 0.420 | source=related, usedFallback=FALSE. Atlanta-suburb cluster found. |
| 12 | 2 | research_keywords | seed=staffing agency forest park, loc=2840 | ~50 | 0.050 | 0.470 | source=related, usedFallback=FALSE. Near-duplicate of seed #7. |

Mid-phase check after seed #4: balance $0.6390 (spend so far $0.2524). Continued.

## Phase 2 ground-truth anchor (via DataForSEO /v3/appendix/user_data, 2026-06-01)

| Field | Value |
|---|---|
| Balance before Phase 2 | $0.8914 |
| Balance after Phase 2 (money.balance) | $0.4390 |
| **Actual Phase 2 spend** | **$0.4524** |
| MCP-estimated Phase 2 spend | $0.4000 (8 × ~$0.050) |
| Estimate error | -12% (under-estimated, but closer than Phase 1's -35%) |
| Cumulative actual spend (P1+P2) | **$0.5610** of $0.92 cap |
| **Remaining headroom** | **$0.3590** |
| Hard floor before pause | $0.08 |

**Per-seed actual cost:** $0.4524 / 8 = **$0.0566/seed** (~57 credits). This is the calibrated rate for future research_keywords budgeting.

