# Phase 2 + 2.5 Analysis — B2B-Intent Keyword Shortlist

**Date:** 2026-06-01
**Phase 2 spend (real):** $0.4524
**Phase 2.5 spend (real):** $0.1028
**Phase 2 + 2.5 combined:** $0.5552
**Cumulative spend (P1+P2+P2.5):** $0.6638 of $0.92 cap
**Remaining headroom:** $0.2562

## Seed performance

| Seed | Total kw returned (top 20) | Buyer-intent count | Avg KD | Best find |
|---|---|---|---|---|
| warehouse staffing agency atlanta | 20 | 14 | 39.3 | "temp agency atlanta" (3040, KD 5) |
| 3PL staffing partner | 20 | 0 | 3.2 | "partner desk" (1085) — algorithm tokenized on "partner" → unrelated B2B partner-program terms. WASTED ~$0.057. |
| temporary labor warehouse georgia | 20 | 1 | 7.9 | "labor solutions" (14800, KD 15) |
| staffing kpis | 20 | 0 (17 hr_content) | 20.9 | "kpi examples" (131k, KD 32) — HR wedge confirmed |
| recycling staffing company | 20 | 19 | 31.6 | "staffing agencies near me" (166k) — recycling vertical did NOT surface |
| hospitality staffing atlanta hotel | 20 | 6 | 24.3 | "xclusive hospitality staffing of houston" (210) — only hospitality vertical term, competitor brand |
| staffing agency mcdonough | 20 | 12 | 29.4 | "temp services near me" (368k, KD 24) — BEST seed, related-source |
| staffing agency forest park | 20 | 12 | 29.9 | "temp services near me" — near-duplicate of mcdonough seed |
| industrial staffing atlanta (P2.5) | 20 | 4 | 31.7 | "industrial staffing atlanta ga" (10, KD 37) — FIRST vertical-modifier buyer term to surface. Rest was generic + competitor brands. |
| manufacturing temp agency (P2.5) | 20 | 2 | 27.9 | "temp agencies near me" (368k, KD 72) — algorithm tokenized on aerotek brand cluster + generic near-me. NO manufacturing-specific terms surfaced beyond competitor brands (resourcemfg). |

**Caveat:** Each MCP response advertised `rowCount: 150` (or 42/58/74 for related-source seeds), but only top 20 rows were returned in `topRows`. The wider 150-row dataset is not exposed by the current MCP schema. Shortlist is built from the 8 × 20 = 160-row top-row preview (126 unique after dedup).

## Shortlist (12 keywords — 11 from Phase 2 + 1 from Phase 2.5)

The selection filter produced only 12 viable candidates after excluding:
- Brand-only navigational searches (elwood/aerotek/labormax/coworx/peopleready/resourcemfg/etc — searching for OTHER companies' websites)
- Out-of-GA market terms (houston/phoenix/dallas/memphis/kalamazoo)
- KD > 60
- Jobseeker / pure informational intent (e.g. `work today paid today labor ready near me`, `aerotek jobs`)

| Rank | Keyword | Volume | KD | CPC | Intent | Target county | Source seed | Score | Why |
|---|---|---|---|---|---|---|---|---|---|
| 1 | temp services near me | 368,000 | 24 | $1.49 | buyer | Generic-NearMe | staffing agency mcdonough | 10.71 | Massive volume, KD reachable, near-me modifier captures local searchers |
| 2 | temp agency atlanta | 3,040 | 5 | $2.71 | buyer | **Fulton** | warehouse staffing agency atlanta | 10.67 | Near-zero competition, Fulton county priority, explicit Atlanta market |
| 3 | labor solutions | 14,800 | 15 | $5.41 | buyer | None | temporary labor warehouse georgia | 8.16 | High CPC signals strong commercial value, low KD, HR/ops decision-maker term |
| 4 | labor finders near me | 4,371 | 12 | $1.88 | buyer | Generic-NearMe | staffing agency forest park | 8.10 | Low KD, near-me modifier, light industrial / labor focused |
| 5 | staffing agencies near me | 166,225 | 60 | $1.51 | buyer | Generic-NearMe | warehouse staffing agency atlanta | 5.29 | Highest-volume direct buyer term, KD at ceiling but FNSG already in Atlanta — locality + GBP signals can compete |
| 6 | kpi examples | 131,233 | 32 | $6.13 | hr_content | None | staffing kpis | 4.81 | HR-content wedge anchor — massive volume, $6 CPC. Pillar content with FNSG staffing-KPI angle |
| 7 | staffing agency mcdonough | 9 | 0 | $0.90 | buyer | **Henry** | staffing agency mcdonough | 4.94 | Hyper-local, zero competition, Henry county priority. Low vol but bottom-funnel — GBP + LP can own |
| 8 | kpi template | 543 | 0 | $9.66 | hr_content | None | staffing kpis | 3.78 | Zero competition, $9.66 CPC, lead-magnet (gated Excel) |
| 9 | kpi template excel | 480 | 0 | $10.44 | hr_content | None | staffing kpis | 3.70 | Cluster with kpi template into one download |
| **10** | **industrial staffing atlanta ga** | **10** | **37** | **n/a** | **buyer** | **Fulton** | **industrial staffing atlanta (P2.5)** | **3.26** | **FIRST vertical-modifier buyer keyword. Tiny volume but Fulton-locality + industrial (warehouse/3PL/manufacturing) wedge means a dedicated /industrial-staffing-atlanta LP can own this with near-zero competition pressure. Cluster sibling for /temp-agency-atlanta page.** |
| 11 | staffing kpis | 320 | 0 | $6.81 | hr_content | None | staffing kpis | 2.23 | Exact wedge term. KD 0, $6.81 CPC. Quick win — single dedicated page (FNSG already ranks #27 from Phase 1) |
| 12 | kpi examples for employees | 260 | 32 | $3.66 | hr_content | None | staffing kpis | 2.23 | Long-tail HR cluster under kpi-examples pillar |

**Note:** Shortlist now 12 of target 10-15. Phase 2.5 added the first warehousing/industrial-vertical buyer term to the universe. The two P2.5 seeds confirmed the structural finding: industrial/manufacturing vertical-modifier organic search volumes are very small (10 vol for "industrial staffing atlanta ga"; "manufacturing temp agency" tokenized into competitor-brand cluster). Further vertical seed expansion past these 2 would yield diminishing returns vs. budget.

## Top 5 for Phase 3 SERP validation

1. **temp agency atlanta** — Atlanta-explicit, ultra-low KD (5). SERP read tells us whether locals (Aerotek, Adecco, Manpower) or directories (Indeed, Yelp) dominate. If FNSG already mid-rank, fast win. If pure jobseeker SERP, kill.
2. **staffing agencies near me** — Highest volume direct buyer term. KD 60 = competitive. SERP shows whether map pack + GBP can carry FNSG, or whether national directories block. Strategically critical.
3. **temp services near me** — 368k volume, KD 24. SERP intent ambiguity: are top results staffing agencies (buyer) or job boards (jobseeker)? Validates whether to invest in pillar content here.
4. **staffing kpis** — Confirms the HR-content wedge actually exists in SERP form (not just keyword tool noise). FNSG ranks #27 already (Phase 1). SERP shows what top 10 look like — competitive landscape for content effort.
5. **labor solutions** — $5.41 CPC = high commercial value. SERP reveals whether this is dominated by a single competitor (Aerotek/Adecco family), industry directories, or open opportunity.

## Vertical coverage check (Phase 2 + 2.5)

- **Warehousing/3PL/Industrial keywords in shortlist:** 1 (`industrial staffing atlanta ga` — added in Phase 2.5)
- **Recycling keywords in shortlist:** 0
- **Hospitality keywords in shortlist:** 0
- **Manufacturing keywords in shortlist:** 0 (the `manufacturing temp agency` seed did NOT surface any manufacturing-modifier term that passed filters — all results were either competitor brand-nav, generic near-me, or jobseeker)
- **HR-content wedge (from staffing kpis seed):** 5
- **General staffing local (Atlanta-modifier or near-me):** 6

**Critical finding (revised after P2.5):** FNSG-vertical-specific buyer terms exist but at minuscule volume. The new seed `industrial staffing atlanta` did surface ONE Fulton-locality industrial-vertical buyer term (10 vol / KD 37), confirming there IS a real organic search universe for industrial+Atlanta but it is too thin to drive volume. The `manufacturing temp agency` seed produced ZERO manufacturing-vertical buyer terms — algorithm collapsed to Aerotek/ResourceMFG brand-nav cluster + generic "temp agencies near me" (KD 72, over ceiling). Net: industrial/warehousing/manufacturing/recycling/hospitality vertical-modifier buyer terms have organic search market sizes in the 0-15 vol range in Atlanta — too small to anchor SEO strategy on alone, but the 1 captured term ("industrial staffing atlanta ga") is a perfect hyper-local anchor for a dedicated LP.

Strategic implications:
- **Vertical landing pages are still required** on FNSG site (for relevance / E-E-A-T / Google Business categories), but driving them via SEO requires bottom-funnel LPs targeting ~0-volume vertical-modifier terms.
- **Top-of-funnel via HR-content wedge is the leverage point** — capture HR/ops audiences with KPI/metrics content, retarget into vertical case studies.
- **Local "near me" + Atlanta-explicit terms** are the actual SEO play — covered by ranks 1, 2, 4, 5, 7.

## Surprises / notes

1. **"3PL staffing partner" wasted ~$0.057** — DataForSEO tokenized on "partner" alone, returning unrelated B2B partner-program terms (Hollister partner, ondeck partner, acs partner, etc). Future B2B-jargon seeds should be tested with `_` joiners or quoted phrases if MCP supports.
2. **Two seeds were near-duplicates** — `staffing agency mcdonough` and `staffing agency forest park` returned ~90% overlapping keyword sets (the Atlanta-suburb staffing cluster). Could have saved ~$0.057 by running only one. Both used `related` source (non-fallback) which is higher quality but produces denser overlap.
3. **`temp agency atlanta` KD 5 with $2.71 CPC** is the standout opportunity — high commercial value, near-zero competition, explicit Atlanta market. Strong candidate for a dedicated /temp-agency-atlanta LP with GBP optimization.
4. **`staffing agencies near me within 5 mi`** (3 vol, KD 51) — Google explicitly suggests this query. Confirms hyper-local intent matters. Likely shows up in autocomplete; not a target itself but signals the modifier pattern.
5. **HR-content wedge has real CPC** — kpi template ($9.66), kpi template excel ($10.44), staffing kpis ($6.81), kpi examples ($6.13). PPC-comparable economics means SEO investment here is justified.
6. **Recycling seed had highest buyer-intent ratio (19/20)** but ZERO recycling-specific terms — algorithm fell back to generic staffing universe. Confirms recycling vertical is a category-creation play, not a search-capture play.
7. **MCP responses cap topRows at 20** despite returning `rowCount: 150` — only 13% of the actual research data is exposed. This is a structural limit of the current MCP server response shape. Phase 1 Note on this should be filed.
8. **Hyper-local target found:** `staffing agency mcdonough` itself only 9 vol but KD 0 — single page + GBP can own Henry county. Replicable pattern for Forest Park (Clayton), Hapeville (Fulton), Stockbridge (Henry), Conyers (Rockdale) if FNSG operates there.

## Filter rules applied

```
exclude_brand_only_nav: regex (elwood|aerotek|luxor|labormax|coworx|peoplelink|appleone|onesource|adecco|beacon hill|usa staffing|...) staffing? (jobs|login|locations|near me|...)?
exclude_other_us_markets: memphis, houston, phoenix, dallas, kalamazoo, nyc, etc
vol_floor_buyer (GA-county): 5
vol_floor_buyer (non-local): 30
vol_floor_hr_content: 10
kd_ceiling_buyer: 60
kd_ceiling_hr_content: 60
intent_weights: buyer=1.0, hr_content=0.5, mixed=0.6
vertical_bonus: warehousing/recycling/hospitality=1.5, hr_content=1.2, general=1.0
locality_bonus: Fulton/Clayton/Henry/DeKalb=1.5, Forsyth/Gwinnett/Statewide=1.3, NearMe=1.1
scoring: log(vol) * (1 - kd/100) * intent_weight * vertical_bonus * locality_bonus
diversify: max 3 keywords per source seed
```

## Phase 2.5 addendum

**Trigger:** Original Phase 2 shortlist was 11 keywords (target 10-15). Two FNSG-core vertical seeds had been missed in Phase 2 — both warehousing/light-industrial (`industrial staffing atlanta`) and manufacturing (`manufacturing temp agency`) were core to FNSG's 35% warehousing/3PL business segment but no seed had explicitly tested those phrases. Phase 2.5 ran 2 additional `research_keywords` MCP calls to (a) expand shortlist toward 12-15 and (b) close the warehousing/manufacturing-vertical coverage gap.

**Spend:** $0.1028 real (anchored against DataForSEO `appendix/user_data` balance pre/post — $0.4390 → $0.3362). Well under the $0.20 P2.5 hard cap. Cumulative now $0.6638 of $0.92 ($0.2562 headroom for Phase 3 SERP validation).

**FNSG project creation (Job 1):** OpenSEO had only 3 existing "Default" projects with `domain: null`. Neither the web UI nor MCP server exposes a project-create endpoint with custom name/domain — the home route auto-creates a default and there is no `createProject` server function in the build. Created FNSG project (`id: fb94f661-42a7-4ffa-b254-322688a2bb4b`, `domain: firstnationalstaffing.com`) via direct D1 SQL insert through the containerized wrangler: `docker exec open-seo-open-seo-1 ./node_modules/.bin/wrangler d1 execute DB --local --command "INSERT INTO projects ..."`. P2.5 MCP calls (and Phase 3 save_keywords later) target this projectId.

**Results:**
- Seed `industrial staffing atlanta` (source: ideas, fallback): 20 topRows, 4 buyer-intent. Best find: `industrial staffing atlanta ga` (10 vol, KD 37, Fulton, commercial) — FIRST vertical-modifier buyer term to surface across all 10 seeds (Phase 2 had 0). Other novel-to-shortlist non-brand candidates either exceeded KD ceiling (`temporary staffing agencies` KD 77, `temporary staffing` KD 73, `staffing companies` KD 81, `church staffing` not on-vertical) or were out-of-GA (`staffing agencies dallas`, `staffing agency houston`).
- Seed `manufacturing temp agency` (source: related, non-fallback): 20 topRows, 2 buyer-intent. Algorithm tokenized aggressively on `aerotek` and `peopleready` brand-nav clusters + the high-volume KD-72 `temp agencies near me`. ZERO manufacturing-modifier terms passed filters. Brand-nav: aerotek (15+ variants), peopleready, resourcemfg. Pure jobseeker: `aerotek jobs`, `work today paid today labor ready near me`. Strategic value of this seed = confirms "manufacturing" as a search modifier is overwhelmed by competitor brand traffic — FNSG cannot win the keyword phrase `manufacturing temp agency`; instead, target the LP message to manufacturing buyers but rank for vertical-agnostic local terms (ranks 1, 2, 4 in shortlist).

**Net effect on shortlist:** +1 keyword (`industrial staffing atlanta ga` inserted at rank 10, score 3.26). 11 → 12 keywords. Vertical coverage went from 0 vertical-buyer terms to 1.

**Top 3 things to know about the 2 new seeds:**
1. The `industrial staffing atlanta` seed is the ONLY one across all 10 seeds in Phase 2 + 2.5 that surfaced a warehousing/industrial-vertical buyer term that passed filters. Validates FNSG should still have a `/industrial-staffing-atlanta` LP — small volume but hyper-relevant and near-zero competition.
2. The `manufacturing temp agency` seed proves "manufacturing" as a search modifier is dominated by Aerotek + ResourceMFG brand searches. FNSG cannot rank for `manufacturing temp agency` itself — strategically pivot to bottom-funnel LPs and PPC for this vertical, not SEO.
3. The structural truth across all 10 seeds: **vertical-modifier B2B buyer search volume is < 50/mo per term in Atlanta.** FNSG's organic strategy must lean on (a) generic local/near-me buyer terms with vertical-positioned content (ranks 1, 2, 4, 5), (b) HR-content wedge for top-funnel awareness (5 KPI terms), and (c) hyper-local + vertical LPs for trust signals and bottom-funnel capture (ranks 7, 10). Pure vertical-modifier SEO is not viable as a primary channel — confirms the Phase 1 hypothesis that AI-search + PPC must supplement organic for vertical capture.

## Files produced

- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_01_..08_*.json` — 8 raw research_keywords responses from Phase 2 (top 20 rows each)
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p25_kw_09_industrial_staffing_atlanta.json` — Phase 2.5 seed 1 raw response
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p25_kw_10_manufacturing_temp_agency.json` — Phase 2.5 seed 2 raw response
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p25_list_projects_after_create.json` — list_projects response after FNSG project creation
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_keywords_universe_final.json` — merged 126-keyword universe (Phase 2 only — universe not re-merged for P2.5 since net add was 1)
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_shortlist_final.json` — 11-keyword shortlist with scoring breakdown (Phase 2 baseline — P2.5 addition tracked inline in this analysis)
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log.md` — Phase 0+1+2 budget (NOTE: this file became inaccessible to Claude tools in the P2.5 session — see sandbox-note below)
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log-p25.md` — Phase 2.5 append + cumulative roll-up + P2.5 ground-truth anchor (authoritative for P2.5 spend numbers)
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/phase2-analysis.md` — this file (Phase 2 + 2.5 combined)

**Sandbox note:** Earlier intermediate files `p2_keywords_universe.json` and `p2_shortlist.json` were written by ctx_execute (Python sandbox) and became inaccessible to all subsequent tool reads (macOS TCC isolation). The `_final.json` siblings written via Claude's native Write tool are the readable, authoritative versions.

**P2.5 sandbox note:** The same macOS TCC isolation hit `budget-log.md` in the Phase 2.5 session — the file was authored outside Claude's native Write/Edit tool reach (no `com.apple.macl` ACL) and could not be opened by Read/Edit/Write/Bash/cat. Phase 2.5 budget detail was therefore appended to `budget-log-p25.md` (this directory) instead of in-place edit. When reviewing budget across phases, consult both files. Going forward (Phase 3+), all artifact writes go through Claude's native Write tool to maintain access.
