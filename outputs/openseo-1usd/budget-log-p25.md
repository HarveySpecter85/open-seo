# Budget Log — Phase 2.5 Addendum

**Note:** Original `budget-log.md` (Phase 0+1+2) became inaccessible to the Claude Write/Read tools in this session (no `com.apple.macl` ACL — it was authored outside Claude's TCC sandbox, similar to the earlier `p2_keywords_universe.json` issue noted in `phase2-analysis.md`). This file is a Phase 2.5 append that should be reviewed alongside the original.

## Phase 2.5 MCP calls

| # | Seed | Tool | locationCode | languageCode | rowCount | source | usedFallback | When |
|---|---|---|---|---|---|---|---|---|
| P25-09 | industrial staffing atlanta | mcp__openseo__research_keywords | 2840 | en | 150 (20 in topRows) | ideas | true | 2026-06-01 |
| P25-10 | manufacturing temp agency | mcp__openseo__research_keywords | 2840 | en | 76 (20 in topRows) | related | false | 2026-06-01 |

projectId for both: `fb94f661-42a7-4ffa-b254-322688a2bb4b` (FNSG, created in Phase 2.5 — see below).

## FNSG project creation (extra Job 1 op, no DataForSEO cost)

| Operation | Cost | Method |
|---|---|---|
| Create OpenSEO project FNSG (domain firstnationalstaffing.com) | $0.00 (no DataForSEO call) | Direct D1 SQL via container wrangler: `docker exec open-seo-open-seo-1 ./node_modules/.bin/wrangler d1 execute DB --local --command "INSERT INTO projects (id, organization_id, name, domain) VALUES ('fb94f661-42a7-4ffa-b254-322688a2bb4b', 'delegated-local-admin', 'FNSG', 'firstnationalstaffing.com');"` — required because OpenSEO web UI auto-creates only `Default`-named projects with `domain: null`, and neither the UI nor the MCP server exposes a project-create endpoint that accepts custom name+domain. |

## Phase 2.5 ground-truth anchor

```
PRE_P25_BALANCE: $0.43899999999999995   (queried via DataForSEO /v3/appendix/user_data before P2.5 calls)
POST_P25_BALANCE: $0.33620000000000005  (same endpoint after both calls)
P25_SPEND_REAL: $0.1028
```

Per-seed cost reconstruction (P25_SPEND / 2 calls = $0.0514 avg/seed). Phase 2 per-seed avg was $0.4524/8 = $0.0566 — Phase 2.5 came in slightly cheaper (related-source `manufacturing temp agency` returned only 76 rows vs the 150-row cap, suggesting partial-result pricing). Within Phase 2.5 hard cap of $0.20.

## Cumulative budget after Phase 2.5

| Phase | Real spend | Cumulative | % of $0.92 cap |
|---|---|---|---|
| Phase 1 anchor + work | $0.1086 | $0.1086 | 11.8% |
| Phase 2 (8 seeds) | $0.4524 | $0.5610 | 61.0% |
| Phase 2.5 (2 seeds + FNSG project create) | $0.1028 | $0.6638 | 72.2% |
| **Remaining for Phase 3 SERP validation** | — | $0.2562 | 27.8% headroom |

Phase 3 plan: top 5 keywords for SERP validation × ~$0.05/keyword = ~$0.25 — fits inside remaining headroom but with thin margin. If Phase 3 begins to exceed $0.25, reduce to top 4.
