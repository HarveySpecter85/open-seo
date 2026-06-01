# FNSG SEO Action Backlog — Post $1 OpenSEO Research

**Date:** 2026-06-01
**Source:** `outputs/openseo-1usd/phase{1,2,3}-analysis.md` + `budget-log-final.md`
**Total spend:** $0.7293 of $0.92 cap. Unused buffer: $0.1907 → next month's research seed.

## Executive summary (1-minute read)

The $1 research validated 3 strategic moves and killed 2 doomed ones. Net findings:

1. **HR-content wedge is real and contestable.** SERP for `staffing kpis` is 100% content — no service pages compete. FNSG can take page 1 with operator-perspective KPI content from its 27-account GA operator base.
2. **Hyper-local Atlanta-suburb pattern works.** SERP for `staffing agency mcdonough` confirms physical office + landing page + GBP wins low-volume Henry suburb SERPs. Replicable to Stockbridge, Hapeville, Conyers, Forest Park, Locust Grove.
3. **`temp agency atlanta` is the standout single-keyword opportunity.** 3,040 vol, KD 5, $2.71 CPC, Fulton county. SERP top 3 = regional incumbents (Labor Staffing of Atlanta, ATL GA Staffing, Focus People), not national fortresses. A `/temp-agency-atlanta` LP + GBP optimization can realistically take page 1.
4. **Two shortlist "false positives" were killed.** `labor solutions` and `labor finders near me` looked viable by KD but Phase 3 SERP probes revealed brand-name namespace collision. **Methodology lesson: always SERP-validate buyer-intent terms before committing content/LP investment.**
5. **Vertical keyword SEO doesn't work for FNSG.** Across 10 seeds, only ONE vertical-modifier B2B buyer term surfaced (`industrial staffing atlanta ga`, 10/mo). Vertical landing pages should exist for trust/relevance, but driving them = HR-content wedge + hyper-local LPs, NOT vertical keyword capture.

**Real organic competitors identified:** expresspros.com, insightglobal.com, focuspeople.com, laborstaffing.com, diversestaffing.com. National brands (Aerotek, Adecco, Allegis) appear but are not dominant in Atlanta+suburb SERPs.

## 30-day actions (quick wins)

### A30-1 — Build `/temp-agency-atlanta` landing page
- **Why:** Highest-leverage single keyword (3,040 vol, KD 5, Fulton). SERP validated as `buyer_clear`. Top 3 are regional incumbents FNSG can compete with on physical presence + GBP signals.
- **What:**
  - Dedicated LP `firstnationalstaffing.com/temp-agency-atlanta/` (or similar)
  - H1 includes "Temp Agency Atlanta" (exact match)
  - Body sections: services offered, industries (warehouse/3PL/recycling/hospitality), South/Central Atlanta service area map, client testimonials, FAQ
  - Schema: LocalBusiness + Service + FAQPage
- **Effort:** ~6-8 hrs writing + dev (or 1 hr in a CMS if site has page templates)
- **Owner:** Harvey (delegate to copywriter / web dev)
- **Verification:** Page indexed in 2-4 weeks. Track in OpenSEO rank tracker (use $0.19 buffer to seed `mcp__openseo__get_rank_tracker` for the 12 shortlist keywords — costs ~$0.05/mo).

### A30-2 — Optimize Google Business Profile for Atlanta + McDonough
- **Why:** Both `temp agency atlanta` and `staffing agency mcdonough` SERPs are local_pack-led. GBP is the lever, not on-page SEO alone.
- **What:**
  - Verify FNSG GBP listing for any Atlanta-region location FNSG operates from
  - Categories: "Employment Agency" + "Staffing Agency" + "Temp Agency"
  - Add services list, populate Q&A section, request 5-10 fresh reviews from current clients
  - Add posts (Google Posts) weekly for 4 weeks — case studies / hiring tips
- **Effort:** ~2 hrs setup + 30 min/week posting
- **Owner:** Harvey or assistant
- **Verification:** Local pack appearance for `temp agency atlanta` and `staffing agency atlanta` within 60 days

### A30-3 — Publish the first HR-content wedge pillar: "Staffing KPIs That Actually Predict Client Retention"
- **Why:** `staffing kpis` SERP is 100% content (Bullhorn, Rhythm Systems, Ascen, Reddit). Operator angle (27 accounts in GA) differentiates from SaaS-vendor content. FNSG ranks #27 already → leverageable.
- **What:**
  - 2,500-3,500 word article on the FNSG blog
  - Hook: "We run 27 staffing accounts in Georgia. Here are the KPIs that actually move the needle."
  - Include: client retention KPI, fill rate, time-to-fill, candidate quality score, NPS-by-client. Real (anonymized) data tables.
  - Internal links to /temp-agency-atlanta LP + 1 vertical service page
  - Schema: Article + Person (Harvey as author)
- **Effort:** ~8-12 hrs writing + editing
- **Owner:** Harvey or ghostwriter with Harvey's input
- **Verification:** Article ranks in top 20 for `staffing kpis` within 60 days (FNSG already at #27)

### A30-4 — Kill list cleanup
- **Why:** Stop optimizing for terms that can't convert or can't rank
- **What:** Audit current FNSG site for any pages explicitly optimized toward:
  - `labor finders` / `labor finders near me` — brand-nav for competitor laborfinders.com, FNSG cannot rank
  - `labor solutions` (generic) — 9 of 10 top results are literal "Labor Solutions"-named companies in other geos. Brand-name collision.
  - `aerotek jobs`, `<competitor> jobs`, `<competitor> careers` — competitor brand-nav, zero strategic value
  - `work today paid today` — pure jobseeker, no buyer intent
  - `temp agencies near me` (KD 72), `staffing companies` (KD 81), `temporary staffing` (KD 73) — KD ceiling exceeded, national-brand fortress
  - `staffing agencies dallas/houston/etc.` — out-of-GA market terms
  - `manufacturing temp agency` — Aerotek/ResourceMFG brand-nav cluster, FNSG cannot win
  - `church staffing` — not FNSG vertical
- **What to do:** Remove these from internal SEO targeting docs, deprioritize in content calendar. Don't remove existing pages if they accidentally rank — just stop building toward them.
- **Effort:** ~1 hr audit
- **Owner:** Harvey

## 60-day actions (structural)

### A60-1 — Build hyper-local suburb LP suite (Phase 1: 3 LPs)
- **Why:** `staffing agency mcdonough` SERP confirmed the pattern. Replicate to other FNSG-served suburbs.
- **What:** 3 LPs in the first wave, mirroring the /temp-agency-atlanta template:
  - `/staffing-agency-stockbridge/` (Henry county) — replicates Mcdonough pattern in same county
  - `/staffing-agency-forest-park/` (Clayton county) — covers Phase 2 seed validated geo
  - `/staffing-agency-hapeville/` (Fulton county, south Fulton industrial hub)
  - Each: H1 with exact-match city + "staffing agency", services list, local industries, embedded map, NAP consistent with GBP, schema LocalBusiness + Service
- **Why these 3 first:** they are FNSG's existing client geography. Stockbridge/Forest Park/Hapeville have warehouse/3PL/recycling concentration and likely already FNSG client overlap.
- **Effort:** ~4-6 hrs/LP × 3 = 12-18 hrs (template reusable from A30-1)
- **Owner:** Harvey + web dev
- **Verification:** Each LP indexed + appears in local_pack for its respective `staffing agency <city>` query within 90 days

### A60-2 — HR-content wedge cluster (4 sibling articles)
- **Why:** `staffing kpis` is the anchor (A30-3). Cluster sibling content around it to dominate the wedge.
- **What:** Articles on:
  1. "KPI Template for Staffing Agencies (Excel Download)" — match `kpi template` (543 vol, KD 0, $9.66 CPC) — gated lead magnet
  2. "Free KPI Excel Template (Downloadable)" — match `kpi template excel` (480 vol, KD 0, $10.44 CPC) — same gated asset, second pillar
  3. "KPI Examples Every Staffing Operator Should Track" — match `kpi examples` (131k vol, KD 32) — high-volume top-funnel pillar
  4. "Employee Performance KPIs (Field-Tested Across 27 Staffing Accounts)" — match `kpi examples for employees` (260 vol, KD 32)
- All link to A30-3 pillar + to /temp-agency-atlanta CTA
- All capture leads via gated KPI template download → Loops automation → SDR follow-up
- **Effort:** ~30-40 hrs writing/editing across 4 articles
- **Owner:** Harvey + ghostwriter
- **Verification:** Gated download captures ≥ 50 leads in first 60 days post-publish

### A60-3 — Backlink reverse-engineering on top 3 competitors (~$1-2 DataForSEO top-up)
- **Why:** Phase 3 backlinks endpoint failed (FNSG account does not have Backlinks API enabled). Worth subscribing if FNSG wants to compete with focuspeople.com / laborstaffing.com / expresspros.com.
- **What:**
  - Top up DataForSEO with $5-10
  - Enable Backlinks API subscription
  - Run `get_backlinks_overview` + `backlinks_referring_domains` for FNSG + 3 competitors
  - Identify backlink sources competitors have that FNSG does not — Chamber listings, GA business directories, industry publications, local news mentions, BBB, GBB, etc.
- **Effort:** ~3-5 hrs analysis post-data
- **Owner:** Harvey (data) + assistant or PR contractor (outreach)
- **Verification:** 10-20 link opportunities documented and prioritized

### A60-4 — Vertical landing pages (trust/conversion only, NOT keyword targeting)
- **Why:** Phase 2+2.5+3 confirmed vertical keyword SEO doesn't scale. But vertical LPs are still needed for E-E-A-T, trust signals, and to convert traffic from generic SEO + paid + AI-search.
- **What:** 3 vertical service LPs (slim, conversion-focused):
  - `/warehouse-staffing/` — for 35% warehousing/3PL mix
  - `/recycling-industry-staffing/` — for 35% recycling mix
  - `/hospitality-staffing/` — for 30% hospitality mix
- Each: 800-1,200 words, services, real client logo wall, vertical case studies, certifications, CTA. NOT optimized for `<vertical> staffing georgia` (no volume exists).
- **Effort:** ~6-8 hrs/LP × 3 = ~20 hrs
- **Owner:** Harvey + copywriter
- **Verification:** Pages indexed, used as conversion targets in paid/AI-search campaigns

## 90-day actions (compounding)

### A90-1 — Set up monthly rank tracking via OpenSEO ($0.05-0.10/mo)
- **Why:** Validate that A30-1, A30-3, A60-1, A60-2 actually move rankings. Closed-loop validation is what compounding SEO requires.
- **What:** Use `mcp__openseo__get_rank_tracker` against the 12-keyword saved shortlist in project `fb94f661-42a7-4ffa-b254-322688a2bb4b`. Schedule weekly automated check. Each check costs ~$0.0025 per keyword = $0.03/run × 4/mo = ~$0.12/mo.
- **Effort:** ~30 min to set up
- **Owner:** Harvey + automation (CRON via OpenSEO's built-in scheduler)
- **Verification:** Rank history visible in OpenSEO UI; monthly review meeting on first Tuesday

### A90-2 — Hyper-local suburb LP suite Phase 2 (3 more LPs)
- **Why:** If A60-1 LPs show traction (rank in top 20 within 60 days), expand the pattern
- **What:** 3 more LPs:
  - `/staffing-agency-conyers/` (Rockdale county)
  - `/staffing-agency-locust-grove/` (Henry county)
  - `/staffing-agency-college-park/` (Fulton county)
- **Trigger:** A60-1 verification passes
- **Effort:** ~12-18 hrs
- **Owner:** Harvey + web dev

### A90-3 — Lead magnet conversion optimization on HR-content cluster
- **Why:** If A60-2's KPI template attracts leads, optimize the funnel
- **What:**
  - A/B test the gated form (2-field vs 4-field)
  - SDR sequence in Loops/Apollo/Smartlead: D0 download confirmation → D3 case study → D7 calendar invite for 15-min discovery call → D14 testimonial → D21 final "any questions?" close
  - Track conversion rate from download → SDR call → MQL → SQL
- **Effort:** ~6-8 hrs setup
- **Owner:** Harvey + SDR / marketing op
- **Verification:** ≥ 5% download → discovery call conversion within 90 days

### A90-4 — AI-search visibility audit (LLM SEO)
- **Why:** Phase 3 conclusion #5 said "vertical capture must come from PPC and AI-search optimization." AI-search (ChatGPT/Perplexity/Gemini Search) increasingly powers B2B research. FNSG should verify what these systems "know" about FNSG.
- **What:**
  - Manual queries in ChatGPT/Perplexity/Gemini for "best warehouse staffing agency in Atlanta", "staffing agency for 3PL in georgia", "recycling industry temp labor", etc. — does FNSG appear in responses? At what context?
  - If not appearing: optimize for AI-search via structured content (FAQ schema, comparison tables, expert quotes), get cited in industry publications, set up llms.txt
- **Effort:** ~3-4 hrs audit + ongoing
- **Owner:** Harvey
- **Verification:** FNSG cited by name in 2+ AI-search responses for buyer-intent queries

### A90-5 — Buffer-funded second round of OpenSEO research (~$0.50)
- **Why:** $0.19 unused buffer from Round 1 + ~$0.30 fresh top-up = small follow-up research
- **What:** Use the buffer + small top-up for:
  - SERP probes on the remaining shortlist keywords NOT yet validated (`temp services near me`, `staffing agencies near me`, `industrial staffing atlanta ga`) — ~$0.04
  - Seed research on competitor brand presence (`focus people atlanta`, `express pros atlanta`, `insight global atlanta`) — ~$0.10
  - Keyword research on Spanish-language B2B terms (Atlanta has large Spanish-speaking workforce; bilingual B2B keywords likely uncontested) — ~$0.15
- **Effort:** ~4 hrs research + analysis
- **Owner:** Harvey + Claude Code session

## Methodology lessons captured

1. **Always SERP-validate buyer-intent keywords before committing content/LP investment.** Keyword tool difficulty scores measure organic ranking density — they do NOT detect brand-name namespace collisions. Phase 3 paid for itself by killing 2 doomed shortlist entries (`labor solutions`, `labor finders near me`).

2. **MCP-reported cost is estimated, not actual.** OpenSEO's MCP wrapper does not expose DataForSEO's `cost` field. Anchor real spend via `curl https://api.dataforseo.com/v3/appendix/user_data` between phases. Real spend ran ~12-35% higher than MCP estimate in this project.

3. **Vertical-modifier B2B keyword universe is tiny.** Across 10 seeds (warehouse/3PL/recycling/hospitality/industrial/manufacturing × geo modifiers), only 1 term passed the filter. FNSG's vertical SEO play is NOT keyword targeting — it's trust/conversion LPs supporting HR-content wedge + hyper-local generic terms + PPC/AI-search.

4. **B2B-jargon seeds need exact-match tactics.** `3PL staffing partner` tokenized to "partner" alone and returned partner-program terms (Hollister partner, etc.). ~$0.057 wasted. Future B2B seeds should use longer multi-word phrases or test with exact-match quoting if MCP supports.

5. **Hyper-local low-volume terms are the bottom-funnel capture engine.** 9/mo for `staffing agency mcdonough` doesn't sound like much, but the SERP confirms a) FNSG can win it with physical presence + LP + GBP, b) the pattern replicates to 4-6 other GA suburbs FNSG operates in, c) bottom-funnel intent = high conversion. Aggregate 5-10 such LPs at 5-30 vol each × 30% conversion = 10-50 qualified leads/mo with zero ongoing spend.

6. **Run the rank tracker monthly.** SEO without measurement compounds nothing. Use the buffer for `get_rank_tracker` against the saved 12-keyword shortlist.

## Open questions

- [ ] Should FNSG website mention specific Atlanta suburb names in service area schema markup? (Yes — A60-1 will include this in LP schema)
- [ ] LinkedIn Ads targeting based on warehouse-manager / ops-director titles for Atlanta+south metro — does this overlap with FNSG existing paid? (Separate `ads-linkedin` skill engagement)
- [ ] Should FNSG enable DataForSEO Backlinks API ($X/mo subscription) for ongoing competitor link monitoring? (A60-3 will quantify)
- [ ] Bilingual SEO — is there material Spanish-language B2B keyword volume in Atlanta? (A90-5 will research)

## References

- `outputs/openseo-1usd/phase1-analysis.md` — diagnostic snapshot (100 current FNSG ranking keywords classified)
- `outputs/openseo-1usd/phase2-analysis.md` — 126-keyword universe + 12-keyword shortlist + Phase 2.5 industrial/manufacturing seeds
- `outputs/openseo-1usd/phase3-analysis.md` — SERP validation + competitor map + kill list + strategic conclusions
- `outputs/openseo-1usd/budget-log-final.md` — full $0.7293 spend ledger
- OpenSEO saved view (live keyword tracking): http://localhost:3002/p/fb94f661-42a7-4ffa-b254-322688a2bb4b/saved
- `docs/superpowers/specs/2026-05-31-openseo-1usd-b2b-intent-pivot-design.md` — original spec this work executed against
- `docs/superpowers/plans/2026-05-31-openseo-1usd-b2b-intent-pivot-execution.md` — execution plan
