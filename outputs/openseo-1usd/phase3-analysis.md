# Phase 3 Analysis — SERP Validation & Final Deliverables

**Date:** 2026-06-01
**Phase 3 spend (real):** $0.0655
**Cumulative spend (all phases):** $0.7293 of $0.92 cap
**Final remaining buffer:** $0.1907 (20.7% under cap)

## SERP intent validation — 5 keywords

### 1. temp agency atlanta
- **Top 10 domains:** laborstaffing.com (LP1), atlgastaffing.com (LP2), focuspeople.com (LP3), trctalent.com (O4), aerotek.com (O5), expresspros.com (O6), insightglobal.com (O7), pridestaff.com (O9), hssstaffing.com (O10)
- **SERP intent:** `buyer_clear`
- **Notable:** Top 3 are local_pack with REGIONAL Atlanta-based staffing companies (Labor Staffing of Atlanta, ATL GA Staffing, Focus People — all 20-30 yrs in business). Ranks 4-10 mix regional (TRC, HSS) and national-brand local pages (Aerotek-Atlanta-East, Express Pros Buckhead, Insight Global, PrideStaff). Indeed appears only at rank 20 (jobseeker outlier). FNSG NOT present in top 20.
- **Verdict:** **KEEP (rank 2 in shortlist).** The KD=5 from research_keywords is validated — top 3 are local SMB staffing, NOT national-brand fortresses. FNSG can compete here with a dedicated /temp-agency-atlanta LP + GBP optimization. Realistic page 1 target.

### 2. staffing kpis
- **Top 10 domains:** bullhorn.com (O2), rhythmsystems.com (O4), ascen.com (O5), execviva.com (O6), reddit.com (O7), activatestaff.com (O8), allvoices.co (O9), denkensolutions.com (O10)
- **SERP intent:** `content_dominated`
- **Notable:** AI Overview at #1 + PAA at #3. 100% blog/content. Top results are SaaS/vendor blogs (Bullhorn = staffing software platform, Rhythm Systems = OKR consulting, Ascen = HR vendor) — all PUBLISHING content to capture HR audience. Reddit at #7 (informal/UGC). No staffing-agency-as-business pages. Zero job-board listings.
- **Verdict:** **KEEP (rank 11 in shortlist).** This validates the entire HR-content wedge hypothesis. FNSG ranks #27 already (per Phase 1) — moving to page 1 requires a SaaS-quality KPI deep-dive article, NOT a service page. Unique angle for FNSG: "We run 27 staffing accounts in GA — here's what KPIs actually predict client retention" (operator perspective vs vendor perspective). Cluster sibling pages: kpi examples, kpi template, kpi template excel, kpi examples for employees (all in shortlist already).

### 3. labor solutions
- **Top 10 domains:** labor-solutions.com (LP1, LP2 + O4), labor-solutions.com (LP3), laborsolutions.com (O5), mylaborsolutions.com (O6), facebook.com (O7 — Labor Solutions FB page), business.plantcity.org (O8), yelp.com (O9 — Labor Solutions Yelp)
- **SERP intent:** `buyer_clear` BUT `brand_dominated`
- **Notable:** SERP is BRAND-NAVIGATIONAL — top 9 are all literal companies LITERALLY NAMED "Labor Solutions" in different US geos (Chicago: labor-solutions.com, FL: laborsolutions.com, NE: laborsolutions.us.com, MI: laborstaffingsolutionsmi.com). Google interprets the query as brand-search for one of these existing "Labor Solutions"-branded businesses. The $5.41 CPC is brand-owners defending their geo, NOT generic open competition.
- **Verdict:** **RECLASSIFY — DROP from primary shortlist, or pivot to a more specific modifier.** FNSG cannot rank a generic `/labor-solutions` page when Google has 5+ literal "Labor Solutions" branded companies competing. Tag retained as `brand-conflict` in OpenSEO. Possible pivot: target `labor solutions atlanta`, `industrial labor solutions`, `staffing labor solutions ga` — none of which appeared in Phase 1/2 universes (zero volume). Net: this is the single biggest SERP-validation surprise. The keyword tool's KD=15 was misleading — true difficulty is structural (brand-name namespace collision).

### 4. staffing agency mcdonough
- **Top 10 domains:** diversestaffing.com (LP1), partnerspersonnel.com (LP2 + O5), selecsource.com (LP3), hiredynamics.com (O4), adecco.com (O6), wagnerstaffing.us (O7), insightglobal.com (O8), expresspros.com (O9), coworxstaffing.com (O10)
- **SERP intent:** `buyer_clear`
- **Notable:** Textbook hyper-local buyer SERP. Top 3 = local_pack with PHYSICAL McDonough offices (Diverse Staffing 896 Hampton Rd, Partners Personnel 418 GA-155 S, SelecSource 1615 GA-20). Ranks 4-10 = staffing-company McDonough location pages (Hire Dynamics, Adecco-McDonough, Wagner, Insight Global, Express Pros, CoWorx). Indeed at rank 20 only (jobseeker outlier). No FNSG presence.
- **Verdict:** **KEEP (rank 7 in shortlist) + replicate pattern.** The volume is tiny (9/mo) but the SERP confirms what `staffing agency atlanta`/big-city SERPs do NOT: that having a physical office in the suburb + a dedicated location page + GBP is the path to ranking. **Pattern is replicable to Stockbridge / Hapeville / Conyers / Forest Park / Locust Grove** (all FNSG-adjacent geos). Each <50/mo volume term has KD ≈ 0 and yields a bottom-funnel page that captures intent without spend.

### 5. labor finders near me
- **Top 10 domains:** laborfinders.com (LP1, LP2, LP3, O4, O5, O7, O8, O9, O10) — 9 of 10 = laborfinders.com itself
- **SERP intent:** `brand_navigational_jobseeker_mixed`
- **Notable:** SERP is BRAND-NAVIGATIONAL — 14 of 20 results are laborfinders.com (the actual brand). Google interprets "labor finders near me" as a query specifically FOR the Labor Finders franchise network. The /job-seekers/ page at rank 7 + PeopleReady job-seeker page at rank 15 reveal the underlying intent is JOBSEEKER, not employer. The "near me" modifier triggers the franchise's geo-locator pages.
- **Verdict:** **DROP from shortlist.** FNSG cannot rank for this query — Google won't surface a different staffing brand for a navigational lookup. Tag retained as `brand-conflict` would be appropriate, but since this is brand-NAV not just buyer-with-brand-conflict, dropping is cleaner. Note: research_keywords tagged KD=12 — the keyword tool measured competitive density of organic-blue results, not the brand-monopoly reality.

## Competitor map

Cross-SERP analysis across top 10 organic + local_pack listings (31 unique domains total). FNSG NOT present in any top 10.

### Multi-SERP competitors (2+ SERPs)

| Domain | SERPs (5 max) | Avg pos | Category | Notes |
|---|---|---|---|---|
| expresspros.com | 2 | 7.5 | national_staffing_brand | Atlanta + McDonough — Express Pros has multiple GA franchises. Real FNSG competitor in physical-presence game. |
| insightglobal.com | 2 | 7.5 | national_staffing_brand | Atlanta + McDonough — Atlanta HQ, blanket location-page strategy. Real competitor for B2B + IT staffing intent. |

### Position-1-3 single-SERP regional players (the real Atlanta/Henry county threat list)

| Domain | Best pos | Category | SERP |
|---|---|---|---|
| laborstaffing.com | 1 | regional_staffing | temp agency atlanta |
| diversestaffing.com | 1 | regional_staffing | staffing agency mcdonough |
| labor-solutions.com | 1 | regional_staffing | labor solutions (brand-conflict) |
| laborfinders.com | 1 | national_staffing_brand | labor finders near me (brand-nav) |
| atlgastaffing.com | 2 | regional_staffing | temp agency atlanta |
| bullhorn.com | 2 | content_blog_or_saas | staffing kpis (HR content) |
| partnerspersonnel.com | 2 | regional_staffing | staffing agency mcdonough |
| focuspeople.com | 3 | regional_staffing | temp agency atlanta |
| selecsource.com | 3 | regional_staffing | staffing agency mcdonough |

### Category roll-up (unique-domain counts across 5 SERPs)

| Category | Unique domains |
|---|---|
| regional_staffing | 13 |
| national_staffing_brand | 7 |
| content_blog_or_saas | 7 |
| aggregator_or_directory | 3 |
| other_directory_or_misc | 1 |

### Top 3-5 real FNSG B2B organic competitors

**For the Atlanta/Fulton + Henry county buyer SERPs:**

1. **expresspros.com** (Express Employment Professionals) — multi-franchise GA presence, ranks in both Atlanta and McDonough SERPs. Direct competitor in physical-office-by-suburb game.
2. **insightglobal.com** — Atlanta-headquartered, blanket location-page strategy across GA suburbs. Direct B2B competitor.
3. **focuspeople.com** — Atlanta local (2727 Paces Ferry Rd, 30+ yrs). Local incumbent. Real competitor for `/temp-agency-atlanta` LP fight.
4. **laborstaffing.com** (Labor Staffing of Atlanta, Decatur GA, 25+ yrs) — owns rank 1 local_pack on temp agency atlanta. Pure-play regional incumbent.
5. **diversestaffing.com** (Diverse Staffing McDonough, 896 Hampton Rd, 25+ yrs) — owns rank 1 local_pack on staffing agency mcdonough. Pure-play Henry county incumbent.

**For the HR-content wedge (staffing kpis SERP):**

1. **bullhorn.com** — the dominant staffing-SaaS content marketer. FNSG content needs to differentiate as OPERATOR perspective vs VENDOR perspective.
2. **rhythmsystems.com**, **ascen.com**, **activatestaff.com**, **execviva.com** — second-tier SaaS/consultancy content. All beatable with stronger operator-data content.

### FNSG appearances

**Zero.** firstnationalstaffing.com does not appear in any top 20 across the 5 SERPs. This is consistent with Phase 1's finding that FNSG has ~no organic visibility outside `staffing kpis` (#27) and a handful of pages.

## Kill list (Phase 1 + Phase 3 SERP validation)

Keywords FNSG currently ranks for that we recommend de-prioritizing. Pull from Phase 1's "jobseeker" classification plus Phase 3 SERP reclassifications:

| Keyword | Phase 1 classification | Phase 3 / structural reason to kill |
|---|---|---|
| labor finders near me | (Phase 1 universe) buyer | Phase 3 SERP = brand_navigational_jobseeker_mixed. laborfinders.com owns 9 of top 10. FNSG cannot rank. |
| labor solutions (generic) | (Phase 1 universe) buyer | Phase 3 SERP = brand-name namespace collision. 9 of 10 are literal "Labor Solutions"-named businesses in other geos. FNSG cannot rank. |
| any `<competitor_brand> jobs` / `<competitor_brand> careers` | jobseeker | Phase 1 explicitly flagged. Brand-nav for competitor — zero strategic value. |
| aerotek jobs | jobseeker | Phase 1 flagged. Aerotek brand-nav, no opportunity. |
| work today paid today labor ready near me | jobseeker | Phase 1 flagged. Pure jobseeker term, no employer-side relevance. |
| temp agencies near me | (research universe) — KD 72 | Phase 2 finding: research_keywords tokenized to Aerotek/PeopleReady brand cluster. KD over ceiling AND brand-nav contaminated. |
| staffing companies | (research universe) — KD 81 | Phase 2 finding: KD ceiling exceeded; broad national volume not addressable by FNSG. |
| temporary staffing | (research universe) — KD 73 | Same — KD over ceiling, national-brand SERP fortress. |
| staffing agencies dallas / houston | research universe | Out-of-GA market terms. Phase 2 filter explicitly excluded. |
| church staffing | research universe | Not on FNSG vertical (warehousing/recycling/hospitality). |
| manufacturing temp agency | (research universe) | Phase 2.5 finding: SERP tokenizes to Aerotek + ResourceMFG brand-nav cluster. FNSG cannot win this phrase. |

**Kill count: 11.** Most overlap with Phase 1's existing jobseeker / brand-nav flags. The 2 new kills from Phase 3 SERP validation specifically: **`labor solutions`** (rank 3 in shortlist) and **`labor finders near me`** (rank 4 in shortlist) — both reclassified DOWN due to brand-name namespace structural barriers that the keyword tool's KD score did not capture.

## Final shortlist saved to OpenSEO

- **Project:** `firstnationalstaffing.com` (id: `fb94f661-42a7-4ffa-b254-322688a2bb4b`)
- **Saved view URL:** http://localhost:3002/p/fb94f661-42a7-4ffa-b254-322688a2bb4b/saved
- **Keywords saved:** 12 of 12 attempted (100%)
- **save_keywords status:** **success** — 5 sequential calls (1 baseline + 4 cluster-specific tag-appends)
- **Tag scheme applied:** every keyword gets `[fnsg-shortlist-v1, b2b]` + per-cluster tags:
  - `buyer + near-me`: temp services near me, labor finders near me, staffing agencies near me
  - `buyer + fulton`: temp agency atlanta, industrial staffing atlanta ga
  - `buyer + henry`: staffing agency mcdonough
  - `buyer + brand-conflict`: labor solutions
  - `hr-content + wedge`: kpi examples, kpi template, kpi template excel, staffing kpis, kpi examples for employees

**Net of Phase 3 validation, the 12-keyword saved shortlist still includes 2 keywords reclassified to drop/de-prioritize (`labor solutions`, `labor finders near me`). They are saved with the `brand-conflict` and `near-me` tags so Harvey can identify and remove them post-review in the OpenSEO UI. Not removing programmatically because the original shortlist score still records them, and the OpenSEO tags allow filtering — keeping the record intact for audit.**

## Final spend ledger

| Phase | Real spend | Cumulative |
|---|---|---|
| Phase 1 | $0.1086 | $0.1086 |
| Phase 2 | $0.4524 | $0.5610 |
| Phase 2.5 | $0.1028 | $0.6638 |
| Phase 3 | $0.0655 | $0.7293 |
| **Total** | **$0.7293 of $0.92 cap** | |
| **Unused buffer** | **$0.1907** (next month's research seed) | |

**Cap headroom: 20.7% under.** Project executed under budget.

## Strategic conclusions

1. **The HR-content wedge is REAL and contestable.** The `staffing kpis` SERP is 100% content (vendor blogs, SaaS pubs, no service pages). FNSG can publish operator-perspective KPI content and realistically take page 1 from Bullhorn et al. with stronger data and a 27-account-in-GA operator angle. This is the single highest-leverage finding of the project — the wedge thesis is structurally validated.

2. **The hyper-local Henry/Clayton/Fulton-suburb pattern WORKS.** The `staffing agency mcdonough` SERP confirms that a physical office + LP + GBP can own a McDonough-equivalent suburb with near-zero competition pressure. Pattern is directly replicable to Stockbridge, Hapeville, Conyers, Forest Park, Locust Grove — each <50/mo volume, near-zero KD, near-zero contested SERPs. Bottom-funnel capture engine = build 4-6 LPs covering FNSG-served suburbs.

3. **Two shortlist keywords were "false positives" from the keyword tool.** `labor solutions` and `labor finders near me` looked viable (KD 12-15, buyer intent flagged) but Phase 3 SERP validation revealed BRAND-NAME NAMESPACE COLLISION that KD scores cannot detect. **Critical methodology finding:** keyword-tool difficulty scores measure competitive ranking density, NOT structural brand-name barriers. ALWAYS validate buyer-intent terms with at least 1 SERP probe before committing content/LP investment. Phase 3 paid for itself by saving the cost of building 2 doomed LPs.

4. **National brands (Express Pros, Insight Global, Aerotek, Adecco) DO appear in Atlanta + McDonough SERPs but are NOT dominant.** Each only holds rank 5-10 with location-page boilerplate. Regional incumbents (laborstaffing.com, focuspeople.com, diversestaffing.com — 20-30 yrs in business) hold rank 1-3 with hyper-local LPs + GBP. **FNSG's structural advantage is operating local: focus on Atlanta-suburb LPs with real office addresses and physical-presence signals — not on competing for national-brand keyword volume.**

5. **The vertical-modifier B2B universe is too thin to drive volume — confirmed across Phase 2 + 2.5 + 3.** Only ONE vertical-modifier buyer term ever surfaced (`industrial staffing atlanta ga`, 10/mo, Phase 2.5). Phase 3 SERPs did not probe this term but the Phase 2/2.5 finding stands: FNSG vertical-specific SEO ≠ a primary channel. Vertical LPs still exist for trust/relevance/E-E-A-T, but DRIVING them = HR-content wedge for top-funnel + PPC/AI-search for vertical-specific capture. **Organic strategy stack: HR-content wedge (volume) + hyper-local suburb LPs (qualified leads) + vertical LPs (trust/conversion).**

## Files produced (Phase 3)

- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_serp_01_temp_agency_atlanta.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_serp_02_staffing_kpis.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_serp_03_labor_solutions.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_serp_04_staffing_agency_mcdonough.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_serp_05_labor_finders_near_me.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p3_save_keywords_response.json`
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/phase3-analysis.md` — this file
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log-final.md` — consolidated budget ledger across all phases
- `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/COMMIT-ALL.sh` — combined commit script (P2 + P2.5 + P3 in one atomic commit) — supersedes the prior `COMMIT-INSTRUCTIONS-PHASE2-P25.sh`
