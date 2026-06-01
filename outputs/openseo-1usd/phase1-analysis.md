# Phase 1 Analysis — FNSG Diagnostic Snapshot

**Domain:** firstnationalstaffing.com
**Date:** 2026-05-31
**Phase 1 spend:** $0.070 (estimated; MCP responses did not expose explicit `cost` field)
**Cumulative spend:** $0.070 of $0.92 cap

## Domain overview

- Domain rank: not exposed by MCP wrapper (response shape: organicTraffic, organicKeywords, backlinks, referringDomains, hasData only)
- Estimated organic traffic: **329 visits / mo**
- Total ranking keywords (universe): **194**
- Total backlinks: **N/A** (Backlinks API not enabled on the connected DataForSEO account)
- Referring domains: **N/A** (same reason)
- Top 3 anchor texts: **N/A**

> Note: the connected DataForSEO account does not have the Backlinks subscription enabled. `get_backlinks_overview` returned an error and consumed zero credit. To unlock this for future research, enable Backlinks on the DataForSEO dashboard. For Phase 1, treat backlink intelligence as a known gap.

## OpenSEO project status

No project exists for `firstnationalstaffing.com`. `list_projects` returned three "Default" projects with `domain: null`. The first project id (`cd1a13a1-7ee2-417a-8420-49e8515dc829`) was used to scope paid calls — this is fine for diagnostic reads but **a real FNSG project must be created in the web UI (http://localhost:3002/) before Task 4 `save_keywords`**, otherwise saved keywords have no domain anchor.

## Top 100 ranking keywords — intent classification

(DataForSEO returned 100 keywords for this domain; the MCP `get_domain_keyword_suggestions` schema does not expose a `limit` parameter, so all 100 are included.)

| # | Keyword | Position | Search volume | Est. monthly traffic | Intent | Reason |
|---|---|---|---|---|---|---|
| 1 | first step staffing atlanta georgia | 54 | 9900 | 20.79 | mixed | competitor brand (first step staffing) — both audiences possible |
| 2 | first step staffing in atlanta georgia | 62 | 9900 | 20.79 | mixed | competitor brand (first step staffing) — both audiences possible |
| 3 | northwest georgia staffing | 54 | 6600 | 13.86 | mixed | geo + staffing term — ambiguous |
| 4 | national staffing | 38 | 1900 | 3.99 | buyer | B2B / employer-research term |
| 5 | newnan staffing agencies | 78 | 1900 | 3.99 | mixed | geo + staffing term — ambiguous |
| 6 | newnan temp agency | 80 | 1900 | 3.99 | mixed | geo + temp term — ambiguous |
| 7 | screening workers | 48 | 1900 | 3.99 | buyer | B2B HR-services research term |
| 8 | staffing agencies in newnan georgia | 99 | 1900 | 3.99 | mixed | geo + staffing term — ambiguous |
| 9 | staffing agencies newnan ga | 102 | 1900 | 3.99 | mixed | geo + staffing term — ambiguous |
| 10 | temp agencies in newnan ga | 88 | 1900 | 3.99 | mixed | geo + temp term — ambiguous |
| 11 | temp agency in newnan ga | 95 | 1900 | 3.99 | mixed | geo + temp term — ambiguous |
| 12 | temp agency newnan ga | 77 | 1900 | 3.99 | mixed | geo + temp term — ambiguous |
| 13 | temp services newnan ga | 76 | 1900 | 3.99 | mixed | geo + temp term — ambiguous |
| 14 | staffing agencies in covington ga | 102 | 1300 | 2.73 | mixed | geo + staffing term — ambiguous |
| 15 | staffing agencies in gainesville ga | 23 | 1300 | 3.51 | mixed | geo + staffing term — ambiguous |
| 16 | staffing agencies in warner robins | 105 | 1300 | 2.73 | mixed | geo + staffing term — ambiguous |
| 17 | staffing agencies warner robins ga | 82 | 1300 | 2.73 | mixed | geo + staffing term — ambiguous |
| 18 | staffing agency in gainesville ga | 23 | 1300 | 3.51 | mixed | geo + staffing term — ambiguous |
| 19 | staffing agency warner robins ga | 70 | 1300 | 2.73 | mixed | geo + staffing term — ambiguous |
| 20 | staffing gainesville ga | 20 | 1300 | 5.59 | mixed | geo + staffing term — ambiguous |
| 21 | temp agencies covington ga | 77 | 1300 | 2.73 | mixed | geo + temp term — ambiguous |
| 22 | temp agencies in covington ga | 93 | 1300 | 2.73 | mixed | geo + temp term — ambiguous |
| 23 | temp agencies in gainesville ga | 28 | 1300 | 2.86 | mixed | geo + temp term — ambiguous |
| 24 | temp agencies warner robins ga | 77 | 1300 | 2.73 | mixed | geo + temp term — ambiguous |
| 25 | temp agency in covington ga | 103 | 1300 | 2.73 | mixed | geo + temp term — ambiguous |
| 26 | temp service warner robins ga | 83 | 1300 | 2.73 | mixed | geo + temp term — ambiguous |
| 27 | douglasville staffing agencies | 78 | 1000 | 2.10 | mixed | geo + staffing term — ambiguous |
| 28 | employment agencies gainesville ga | 23 | 1000 | 4.30 | mixed | geo + employment term — ambiguous |
| 29 | employment agency gainesville ga | 20 | 1000 | 5.60 | mixed | geo + employment term — ambiguous |
| 30 | national staffing companies | 46 | 1000 | 2.10 | buyer | B2B / employer-research term |
| 31 | national temp agency | 22 | 1000 | 3.30 | buyer | employer researching national temp providers |
| 32 | nga staffing | 41 | 1000 | 2.10 | mixed | competitor brand (NGA staffing) — both audiences possible |
| 33 | staffing agencies douglasville ga | 71 | 1000 | 2.10 | mixed | geo + staffing term — ambiguous |
| 34 | staffing agencies gainesville ga | 28 | 1000 | 2.10 | mixed | geo + staffing term — ambiguous |
| 35 | staffing agency in douglasville ga | 95 | 1000 | 2.10 | mixed | geo + staffing term — ambiguous |
| 36 | temp agency douglasville ga | 74 | 1000 | 2.10 | mixed | geo + temp term — ambiguous |
| 37 | temp agency gainesville ga | 27 | 1000 | 2.30 | mixed | geo + temp term — ambiguous |
| 38 | temp agency in gainesville ga | 51 | 1000 | 2.10 | mixed | geo + temp term — ambiguous |
| 39 | transnational staffing | 46 | 1000 | 2.10 | buyer | B2B / national staffing research term |
| 40 | albany ga temp services | 79 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 41 | gainesville staffing agencies | 30 | 880 | 1.85 | mixed | geo + staffing term — ambiguous |
| 42 | gainesville temp agency | 41 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 43 | smyrna staffing agencies | 41 | 880 | 1.85 | mixed | geo + staffing term — ambiguous |
| 44 | staffing agencies gainesville fl | 63 | 880 | 1.85 | mixed | geo + staffing term — ambiguous |
| 45 | staffing agency gainesville fl | 52 | 880 | 1.85 | mixed | geo + staffing term — ambiguous |
| 46 | staffing agency in kennesaw ga | 109 | 880 | 1.85 | mixed | geo + staffing term — ambiguous |
| 47 | temp agencies in gainesville fl | 44 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 48 | temp agencies in gainesville florida | 37 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 49 | temp agency gainesville fl | 52 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 50 | temp service in albany ga | 108 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 51 | temp services albany ga | 85 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 52 | temp services gainesville fl | 70 | 880 | 1.85 | mixed | geo + temp term — ambiguous |
| 53 | drug free workplace | 94 | 720 | 1.51 | buyer | HR-compliance research term (B2B) |
| 54 | drug-free workplace | 96 | 720 | 1.51 | buyer | HR-compliance research term (B2B) |
| 55 | first four staffing | 46 | 720 | 1.51 | mixed | competitor brand — both audiences possible |
| 56 | temp agencies albany ga | 77 | 720 | 1.51 | mixed | geo + temp term — ambiguous |
| 57 | temp agency albany ga | 86 | 720 | 1.51 | mixed | geo + temp term — ambiguous |
| 58 | nationwide staffing agencies | 25 | 590 | 1.36 | buyer | B2B / employer-research term |
| 59 | health screening employees | 103 | 390 | 0.82 | buyer | B2B HR-services research term |
| 60 | health screening for employees | 97 | 390 | 0.82 | buyer | B2B HR-services research term |
| 61 | health screening for employment | 76 | 390 | 0.82 | buyer | B2B HR-services research term |
| 62 | health screenings for employees | 108 | 390 | 0.82 | buyer | B2B HR-services research term |
| 63 | national staffing firms | 16 | 390 | 3.55 | buyer | B2B / employer-research term |
| 64 | onin smyrna | 40 | 390 | 0.82 | mixed | competitor brand (Onin) — both audiences possible |
| 65 | staff health screening | 78 | 390 | 0.82 | buyer | B2B HR-services research term |
| 66 | staffing agencies in brunswick ga | 97 | 390 | 0.77 | mixed | geo + staffing term — ambiguous |
| 67 | temp agency brunswick ga | 74 | 390 | 0.82 | mixed | geo + temp term — ambiguous |
| 68 | temp services brunswick ga | 86 | 390 | 0.82 | mixed | geo + temp term — ambiguous |
| 69 | top staffing companies in the us | 78 | 390 | 0.82 | buyer | B2B / employer-research term |
| 70 | top staffing companies in usa | 85 | 390 | 0.82 | buyer | B2B / employer-research term |
| 71 | top staffing company in usa | 84 | 390 | 0.77 | buyer | B2B / employer-research term |
| 72 | top staffing firms in us | 84 | 390 | 0.82 | buyer | B2B / employer-research term |
| 73 | top us staffing companies | 50 | 390 | 0.82 | buyer | B2B / employer-research term |
| 74 | top us staffing firms | 55 | 390 | 0.77 | buyer | B2B / employer-research term |
| 75 | etcon employment solutions gainesville ga | 48 | 320 | 0.67 | mixed | competitor brand (Etcon) — both audiences possible |
| 76 | fs staffing | 54 | 320 | 0.67 | brand | brand term (matches FS Staffing nickname) |
| 77 | staffing agencies in griffin ga | 109 | 320 | 0.67 | mixed | geo + staffing term — ambiguous |
| 78 | staffing agencies in stone mountain ga | 108 | 320 | 0.63 | mixed | geo + staffing term — ambiguous |
| 79 | staffing agency albany ga | 75 | 320 | 0.67 | mixed | geo + staffing term — ambiguous |
| 80 | staffing agency dublin ga | 89 | 320 | 0.67 | mixed | geo + staffing term — ambiguous |
| 81 | staffing kpis | 27 | 320 | 0.67 | buyer | B2B operations research term |
| 82 | staffing report | 63 | 320 | 0.67 | buyer | B2B operations research term |
| 83 | staffing reports | 58 | 320 | 0.67 | buyer | B2B operations research term |
| 84 | temp agency dublin ga | 96 | 320 | 0.67 | mixed | geo + temp term — ambiguous |
| 85 | temp agency in stone mountain ga | 94 | 320 | 0.67 | mixed | geo + temp term — ambiguous |
| 86 | temp services in griffin ga | 109 | 320 | 0.67 | mixed | geo + temp term — ambiguous |
| 87 | employment agencies albany ga | 93 | 260 | 0.55 | mixed | geo + employment term — ambiguous |
| 88 | first national staffing | 3 | 260 | 79.04 | brand | brand term |
| 89 | healthcare evs | 44 | 260 | 0.55 | mixed | ambiguous healthcare EVS term |
| 90 | largest staffing agencies in the us | 78 | 260 | 0.55 | buyer | B2B / employer-research term |
| 91 | largest staffing agencies in us | 53 | 260 | 0.51 | buyer | B2B / employer-research term |
| 92 | largest staffing agency | 55 | 260 | 0.55 | buyer | B2B / employer-research term |
| 93 | largest staffing companies | 52 | 260 | 0.55 | buyer | B2B / employer-research term |
| 94 | largest staffing companies in the us | 26 | 260 | 0.60 | buyer | B2B / employer-research term |
| 95 | largest staffing company in the united states | 59 | 260 | 0.55 | buyer | B2B / employer-research term |
| 96 | spherion gainesville ga | 74 | 260 | 0.55 | mixed | competitor brand (Spherion) — both audiences possible |
| 97 | staffing agencies snellville ga | 110 | 260 | 0.55 | mixed | geo + staffing term — ambiguous |
| 98 | temp agencies in snellville | 86 | 260 | 0.55 | mixed | geo + staffing term — ambiguous |
| 99 | temp agencies in snellville ga | 93 | 260 | 0.51 | mixed | geo + staffing term — ambiguous |
| 100 | temp agencies snellville ga | 86 | 260 | 0.51 | mixed | geo + staffing term — ambiguous |

## Intent summary

- **Jobseeker intent: 0 keywords (0.0% of count, 0.0% of est. traffic)**
- **Buyer intent: 29 keywords (29.0% of count, 12.0% of est. traffic — 37.63/312.52)**
- **Mixed: 69 keywords (69.0% of count, 62.5% of est. traffic — 195.18/312.52)**
- **Brand: 2 keywords (2.0% of count, 25.5% of est. traffic — 79.71/312.52, dominated by `first national staffing` at position 3 sending 79.04 visits/mo)**

> Calibration note: the rubric in the brief reserves "jobseeker" for explicit job-search language (`jobs`, `hiring`, `careers`, `apply`, `work at`). None of the top-100 surfacing keywords contain those tokens — every geo "staffing agency / temp agency" term is bucketed as **mixed** per the brief's example. In practice that "mixed" pool is the contested middle ground: in real search behavior these queries skew jobseeker (worker volume >> employer volume), but the brief defines them as mixed and I'm honoring that definition.

## Initial backlink read

**Not available this phase.** `get_backlinks_overview` returned `"Backlinks is not enabled for the connected DataForSEO account"` (zero credit consumed). To get backlink intelligence, Harvey would need to enable the Backlinks subscription on the DataForSEO dashboard. Recommend treating this as a Phase 2+ unlock rather than re-trying.

## Decision point

**Recommendation: proceed to Phase 2 — with one seed-list adjustment.**

Rationale (one sentence): the domain's current footprint is overwhelmingly geo "staffing agency / temp agency" terms that the brief's rubric classifies as mixed, with a clear B2B-research vein (29 buyer keywords including `national staffing firms` at position 16, `nationwide staffing agencies` at 25, `largest staffing companies in the us` at 26) — confirming that Phase 2 B2B seed expansion is the right next move and that buyer-side opportunity is real but underdeveloped.

### Seed list adjustments for Phase 2

1. **Already-ranking buyer terms (deprioritize as new seeds — already captured):**
   - `national staffing` (pos 38), `national staffing companies` (46), `national staffing firms` (16), `national temp agency` (22), `nationwide staffing agencies` (25), `largest staffing companies in the us` (26), `top us staffing companies` (50). These exist in the universe already — Phase 2 should focus on **vertical/industry-specific buyer terms** (warehouse staffing, 3PL staffing, recycling staffing, hospitality staffing, light industrial staffing) and **decision-stage buyer terms** (`how to choose a staffing agency`, `staffing agency RFP`, `temp labor cost per hour`), not duplicates of the generic "national staffing" cluster.

2. **Geographic depth confirmed (use as buyer-modified seeds):** FNSG ranks across Newnan, Gainesville GA, Gainesville FL, Covington, Warner Robins, Douglasville, Albany GA, Smyrna, Kennesaw, Brunswick, Dublin, Griffin, Stone Mountain, Snellville. Phase 2 should test **buyer-intent variants** of these (e.g. `warehouse staffing newnan ga`, `3pl staffing gainesville ga`) to see if any have non-zero search volume — most will be zero-volume, but the few that aren't are gold.

3. **HR-services adjacency is an untapped wedge:** the domain already pulls weak rankings on `screening workers`, `drug free workplace`, `health screening for employees`, `staffing kpis`, `staffing report`. These are B2B operations queries with high CPC ($8-$13). Phase 2 should include a seed for **HR/compliance content terms** as a content-marketing wedge to capture employer attention upstream of staffing-vendor selection.

4. **Competitor-brand ranking suggests opportunity:** FNSG ranks (poorly, pos 40-62) for competitor brands — First Step Staffing, Onin, Spherion, NGA, Etcon, Transnational, First Four. Phase 2 SERP analysis for one or two of these (`first step staffing atlanta georgia` at vol 9900 and pos 54 is the biggest opportunity) could reveal what content lives at top SERP positions and whether comparison/alternative content is a viable lane.

5. **Critical gap to investigate in Phase 2:** zero jobseeker-explicit keywords appear in the top 100, but `first national staffing` (the brand term) at position 3 sends 79 visits/mo — far more than any other single keyword. The mixed "staffing agency [geo]" terms almost certainly skew jobseeker in reality even though the rubric bucketed them as mixed. Phase 2 SERP analysis on 2-3 mixed terms (`staffing agencies in gainesville ga`, `temp agency newnan ga`) should clarify whether SERP intent reads jobseeker or buyer — that finding directly determines whether FNSG's current content asset is a B2B liability or a balanced asset.
