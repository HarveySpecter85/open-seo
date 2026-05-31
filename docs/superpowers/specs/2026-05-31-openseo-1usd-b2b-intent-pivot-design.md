# OpenSEO $1 Spend Plan — B2B Intent Pivot for FNSG

**Date:** 2026-05-31
**Owner:** Harvey Rodelo (FNSG Director of Operations)
**Subject domain:** firstnationalstaffing.com
**Budget:** $1.00 DataForSEO free credit (1000 credits = $1, per `adr/0002`)

## Problem statement

FNSG's organic search traffic skews toward **jobseekers** (B2C, low commercial value) instead of **B2B buyers** (warehouse managers, HR directors, ops directors who hire staffing services). The mismatch has two causes:

1. **Wrong intent.** Current ranking keywords lean toward "warehouse jobs near me" style queries — jobseeker terms that don't convert into client revenue.
2. **Wrong-feeling geo signal.** Office in Gainesville (Hall County) creates local SEO pressure for the wrong city. Real client demand is in Fulton, Clayton, DeKalb, Henry, and Forsyth counties.

The marketplace reality (per Harvey, 2026-05-31):

| Side | Concentration |
|---|---|
| Workers (supply) | Gwinnett County majority, willing to commute long distances |
| Clients (demand) | Fulton (most) > Clayton > DeKalb > Henry > Forsyth |

Worker commute from Gwinnett to Fulton/Clayton/DeKalb is viable and already happening, so **the limiting factor is keyword intent, not geography.** This spec uses the $1 credit to validate that thesis with real DataForSEO data and produce a cleaned, B2B-intent keyword backlog tied to the correct geos.

## Goals

1. Classify current FNSG ranking keywords by intent (jobseeker / buyer / mixed / brand) and quantify how much traffic is misaligned.
2. Produce 10-15 buyer-intent keywords with usable volume + reachable difficulty in the priority counties.
3. Identify top 3-5 actual SERP competitors for those keywords.
4. Save the cleaned shortlist into the OpenSEO project for ongoing rank tracking.
5. Spend no more than ~$0.75 of the $1 credit, leaving ~$0.25 buffer for surprises.

## Non-goals

- No deep backlinks audit beyond a single summary call (one referring-domains snapshot only).
- No content writing, no on-page changes, no Lighthouse audits this round.
- No paid-ads strategy (handled separately via the `ads-*` skills).
- No competitor recruiting/jobseeker keyword research (B2C side parked).
- No build/code changes to OpenSEO itself.

## Geographic priority

1. **Fulton County** — Atlanta, South Fulton industrial (Union City, Fairburn, College Park, East Point, Palmetto). Highest current client concentration.
2. **Clayton County** — Forest Park, Jonesboro, Riverdale. Warehouse-dense.
3. **Henry County** — McDonough, Stockbridge, Locust Grove. Logistics boom zone.
4. **DeKalb County** — Decatur, Tucker, Stone Mountain. Secondary.
5. **Forsyth County** — Cumming. Secondary, geographically close to Gwinnett worker supply (operational sweet spot if demand develops here).
6. **Gwinnett County** — bonus growth zone. Where workers live; capturing demand here would be the highest-margin client acquisition.

## Intent classification rubric

Used after Phase 1 to tag every current ranking keyword:

- **`jobseeker`** — terms a worker types looking for employment ("warehouse jobs near me", "hiring at [city]", "staffing agency jobs"). Kill / deprioritize.
- **`buyer`** — terms an employer types looking to hire staffing services ("warehouse staffing agency", "temp labor company", "3PL staffing partner"). Target.
- **`mixed`** — ambiguous, both audiences ("staffing agency [city]", "warehouse staffing [city]"). Evaluate by SERP composition.
- **`brand`** — "first national staffing" variants. Keep but not strategic.

## Spend plan — 3 phases with checkpoints

Stop after each phase, review with Harvey, decide whether to continue.

### Phase 1 — Diagnostic snapshot (~$0.10-0.15)

| # | MCP tool | Args | Est. cost | Output |
|---|---|---|---|---|
| 1 | `whoami` | — | $0 | confirm MCP session |
| 2 | `list_projects` | — | $0 | locate or create FNSG project |
| 3 | `get_domain_overview` | `firstnationalstaffing.com` | ~$0.03 | DA, organic traffic, top keywords, paid keywords |
| 4 | `get_domain_keyword_suggestions` | `firstnationalstaffing.com`, limit 50, sort by traffic | ~$0.05 | top 50 current ranking keywords for intent classification |
| 5 | `get_backlinks_overview` | `firstnationalstaffing.com` | ~$0.02 | backlinks summary, referring domains, anchor health |

**Checkpoint 1 deliverable:** intent classification table over the top 50 current rankings (jobseeker / buyer / mixed / brand) + estimated % of traffic on the wrong intent. Decision: proceed to Phase 2 yes/no.

### Phase 2 — B2B-intent keyword research (~$0.40-0.50)

Eight seed keywords chosen to cover all three FNSG verticals (warehousing/3PL 35%, recycling 35%, hospitality 30%) and the priority counties.

| # | MCP tool | Seed | Est. cost |
|---|---|---|---|
| 6 | `research_keywords` | `warehouse staffing agency atlanta` | ~$0.035 |
| 7 | `research_keywords` | `3PL staffing partner` | ~$0.035 |
| 8 | `research_keywords` | `temporary labor warehouse georgia` | ~$0.035 |
| 9 | `research_keywords` | `light industrial staffing atlanta` | ~$0.035 |
| 10 | `research_keywords` | `recycling staffing company` | ~$0.035 |
| 11 | `research_keywords` | `hospitality staffing atlanta hotel` | ~$0.035 |
| 12 | `research_keywords` | `staffing agency mcdonough` (Henry test) | ~$0.035 |
| 13 | `research_keywords` | `staffing agency forest park` (Clayton test) | ~$0.035 |

All calls scoped to `location_code=2840` (United States) with `language_code=en`. Where the tool supports finer geo, narrow to Atlanta MSA.

**Selection filter** applied after Phase 2 to choose the shortlist:
- Monthly search volume ≥ 30 (lower is acceptable for hyper-local buyer-intent terms)
- Keyword difficulty ≤ 40 (or ≤ 50 if buyer intent is unambiguous)
- SERP intent reads as **employer/buyer** based on top 3 results (informational + B2B service pages, not job boards)
- Excludes terms with "jobs", "hiring", "careers" suffixes unless SERP confirms employer intent

**Checkpoint 2 deliverable:** ranked shortlist of 10-15 keywords with volume, difficulty, intent tag, and chosen target county. Decision: which 5 advance to Phase 3 SERP validation.

### Phase 3 — SERP + competitor validation (~$0.05-0.10)

| # | MCP tool | Args | Est. cost |
|---|---|---|---|
| 14-18 | `get_serp_results` ×5 | top 5 from Phase 2 shortlist | ~$0.015 total |
| 19 | `save_keywords` | shortlist of 10-15 | $0 |

**Deliverables:**
1. **Kill list** — keywords currently ranking but jobseeker-intent → flag for de-emphasis (no need to actively remove; just stop optimizing for them).
2. **Target shortlist** — 10-15 B2B buyer-intent keywords saved into the OpenSEO project, tagged with target county.
3. **Competitor map** — top 3-5 domains repeatedly appearing in the SERP top 10 → these are FNSG's real organic competitors in B2B staffing.
4. **Action backlog (follow-up doc)** — concrete next steps (e.g., "create county-specific service pages for top 5 target keywords", "outreach to backlink sources of competitor X", scoped to 30/60/90 days). Written to a separate file in `docs/superpowers/specs/` after Phase 3 review, not produced by API calls.

## Budget safety rails

- Hard cap: $0.85 total spend. If Phase 1 + Phase 2 already exceed $0.65, halt before Phase 3 and report.
- Verify Autumn balance after each phase (non-hosted Docker mode does not enforce Autumn, but the DataForSEO endpoint returns cost in each response; log it).
- Do **not** call `get_rank_tracker`, `get_domain_overview` for competitors, or any backlinks endpoints beyond #5 in this run.

## Success criteria

- [ ] Phase 1, 2, 3 complete with total spend ≤ $0.85.
- [ ] Intent classification table delivered for top 50 current keywords.
- [ ] At least 10 B2B buyer-intent keywords saved in OpenSEO project, each tagged with target county.
- [ ] At least 3 real competitor domains identified by SERP overlap.
- [ ] Written 30/60/90-day action backlog committed to the same `docs/superpowers/specs/` folder as a follow-up file.

## Out of scope (for follow-up sessions)

- Per-county landing page content design (handled by `frontend-design` or copywriting tooling).
- Competitor backlink reverse-engineering (next $1-2 of credit).
- LinkedIn / Google Ads B2B campaign aligned to these keywords (handled by `ads-*` skills).
- Worker-side recruiting SEO (separate project; B2C track, paused).

## Open questions to resolve in execution

- Does `research_keywords` accept a county-level `location_code`? If not, we filter post-hoc using the keyword text itself (e.g., "atlanta", "mcdonough" in the term).
- Does `get_domain_keyword_suggestions` paginate? If yes, one call is enough for top 50; if no and it returns more, no extra cost.
- Whether Autumn metering is bypassed in Docker `local_noauth` mode (per `adr/0002`, hosted-only billing path).

## References

- `/Users/harveymcm1/Documents/Projects/Open-SEO/CLAUDE.md` — architecture, MCP tool inventory
- `/Users/harveymcm1/Documents/Projects/Open-SEO/adr/0002-hosted-dataforseo-metering-with-autumn.md` — billing path
- `/Users/harveymcm1/Documents/Projects/Open-SEO/src/server/mcp/tools/` — MCP tool definitions
- DataForSEO docs indexed in context-mode under sources: `dataforseo-v3-root`, `dataforseo-serp`, `dataforseo-labs`, `dataforseo-backlinks`
