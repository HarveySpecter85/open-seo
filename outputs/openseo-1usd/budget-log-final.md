# Budget Log — FINAL (Phases 1 + 2 + 2.5 + 3)

**Status:** Authoritative, consolidates Phases 1, 2, 2.5, 3.
**Reason for new file:** Original `budget-log.md` (P0+P1+P2) became inaccessible to Claude tools mid-session (macOS TCC ACL drift — file authored outside Claude's sandbox writer). `budget-log-p25.md` covers Phase 2.5 only. This file is the single source of truth going forward.

## Cumulative budget vs. $0.92 hard cap

| Phase | Real spend | Cumulative | % of $0.92 cap |
|---|---|---|---|
| Phase 1 (anchor + work) | $0.1086 | $0.1086 | 11.8% |
| Phase 2 (8 research_keywords seeds) | $0.4524 | $0.5610 | 61.0% |
| Phase 2.5 (2 research_keywords + FNSG project create via D1) | $0.1028 | $0.6638 | 72.2% |
| Phase 3 (5 SERP probes + 5 save_keywords calls) | $0.0655 | $0.7293 | 79.3% |
| **Remaining buffer** | — | **$0.1907** | 20.7% |

**Total real spend: $0.7293 of $0.92 cap. Came in $0.1907 under cap.**

## Phase 3 (SERP validation + save_keywords) — detail

### Phase 3 ground-truth anchors (DataForSEO /v3/appendix/user_data)

```
PRE_P3_BALANCE:        $0.3362   (queried before any P3 calls)
POST_SERP3_BALANCE:    $0.2942   (after first 3 SERPs — mid-phase budget gate)
POST_P3_BALANCE:       $0.2707   (after all 5 SERPs + 5 save_keywords calls)
P3_SPEND_REAL:         $0.0655
```

### Phase 3 MCP calls

| # | Tool | Inputs | locationCode | languageCode | Real cost | Notes |
|---|---|---|---|---|---|---|
| P3-01 | mcp__openseo__get_serp_results | batch of 3 (`temp agency atlanta`, `staffing kpis`, `labor solutions`) | 2840 | en | $0.0420 (≈ $0.014/SERP) | All ok=true, 20 items each |
| P3-02 | mcp__openseo__get_serp_results | batch of 2 (`staffing agency mcdonough`, `labor finders near me`) | 2840 | en | $0.0235 (≈ $0.012/SERP) | All ok=true, 20 items each |
| P3-03 | mcp__openseo__save_keywords | 12 keywords, tags `[fnsg-shortlist-v1, b2b]` | 2840 | en | $0.00 | savedCount=12 (baseline) |
| P3-04 | mcp__openseo__save_keywords | 3 near-me, tags `[buyer, near-me]` (append) | 2840 | en | $0.00 | savedCount=3 |
| P3-05 | mcp__openseo__save_keywords | 2 Fulton, tags `[buyer, fulton]` (append) | 2840 | en | $0.00 | savedCount=2 |
| P3-06 | mcp__openseo__save_keywords | 1 Henry, tags `[buyer, henry]` (append) | 2840 | en | $0.00 | savedCount=1 |
| P3-07 | mcp__openseo__save_keywords | 1 brand-conflict, tags `[buyer, brand-conflict]` (append) | 2840 | en | $0.00 | savedCount=1 |
| P3-08 | mcp__openseo__save_keywords | 5 HR-content, tags `[hr-content, wedge]` (append) | 2840 | en | $0.00 | savedCount=5 |

**Per-SERP cost: ~$0.013** (5 SERPs at $0.0655 / 5). Much cheaper than per-seed research_keywords (Phase 2 was $0.057/seed; Phase 2.5 was $0.051/seed). Confirms `get_serp_results` is a cheaper DataForSEO endpoint than `research_keywords`.

**Per-save_keywords cost: $0.00** confirmed (tool description: "Free — does not call DataForSEO"). All 5 save_keywords calls included for full audit trail, total cost $0.00.

## Phase 2.5 (carried forward — see `budget-log-p25.md` for full detail)

```
PRE_P25_BALANCE:    $0.4390
POST_P25_BALANCE:   $0.3362
P25_SPEND_REAL:     $0.1028
```

2 research_keywords seeds: `industrial staffing atlanta`, `manufacturing temp agency`. Plus FNSG project creation via D1 SQL insert ($0.00 — no DataForSEO call).

## Phase 2 (carried forward — see `phase2-analysis.md` for seed-level breakdown)

```
PRE_P2_BALANCE:     $0.8914 (computed: ≈ $1.00 starting credit minus Phase 1 anchor + work)
POST_P2_BALANCE:    $0.4390
P2_SPEND_REAL:      $0.4524
```

8 research_keywords seeds. Per-seed avg $0.0566. One wasted seed (`3PL staffing partner` tokenized on "partner" alone, ~$0.057 returned unrelated B2B partner-program terms).

## Phase 1 (carried forward — original `budget-log.md` inaccessible, totals from `phase1-analysis.md`)

```
P1_SPEND_REAL:      $0.1086
```

Anchor probes + initial keyword universe seed (Domain overview + initial keyword research for FNSG.com).

## Critical structural findings on cost

1. **`get_serp_results` is ~4x cheaper than `research_keywords`** (~$0.013 vs ~$0.055 per query). Future SERP validation rounds should over-index on this endpoint when prioritizing budget.
2. **`save_keywords` is free** (validated empirically across 5 calls). Tag clustering via multiple append-mode calls costs $0.00 — no concern about over-using it.
3. **One wasted seed in Phase 2** (`3PL staffing partner`) cost $0.057 and returned zero on-topic results. Future B2B-jargon seeds should be tested with underscore-joined phrases or after a quick `get_serp_results` sanity check (cheaper) before committing to a full `research_keywords` call.
4. **Buffer of $0.1907 remains** — could afford a Phase 4 (e.g. 4-7 additional SERP probes for the kpi-cluster keywords or vertical-modifier validation) if/when warranted. Recommend saving as next-month's research seed instead.

## File audit

- `budget-log.md` (P0+P1+P2) — **INACCESSIBLE** to Claude tools (TCC ACL issue). Still on disk but cannot be Read/Edit/Write.
- `budget-log-p25.md` (P2.5) — accessible, authoritative for P2.5.
- `budget-log-final.md` (this file) — accessible, consolidates ALL phases. **Use this for any future audit.**
