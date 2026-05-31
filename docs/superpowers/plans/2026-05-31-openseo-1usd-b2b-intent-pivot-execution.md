# OpenSEO $1 Spend — B2B Intent Pivot Execution Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Execute the 3-phase DataForSEO research from `docs/superpowers/specs/2026-05-31-openseo-1usd-b2b-intent-pivot-design.md` using the local OpenSEO MCP server, capture raw responses and analysis to `outputs/openseo-1usd/`, and produce a kill list + 10-15 B2B buyer-intent keyword shortlist + competitor map + 30/60/90 action backlog. Total spend ≤ $0.85 of the $1 DataForSEO credit.

**Architecture:** This is a research/exploration plan, not a code-change plan. Each task invokes one or more OpenSEO MCP tools, persists raw JSON to a gitignored `outputs/openseo-1usd/raw/` folder, writes a human-readable analysis markdown to a tracked `outputs/openseo-1usd/` folder, and commits the analysis (not the raw). Checkpoints between phases pause execution for Harvey to approve continuation.

**Tech Stack:** OpenSEO MCP server (`openseo` global Claude Code MCP entry, transport HTTP, http://localhost:3002/mcp), DataForSEO v3 API behind it (~$1 / 1000 credits), Docker container `open-seo-open-seo-1`.

---

## File Structure

| File | Tracked | Purpose |
|---|---|---|
| `outputs/openseo-1usd/budget-log.md` | yes | running cost tracker, one row per MCP call |
| `outputs/openseo-1usd/raw/` | NO (gitignored) | raw JSON dumps of MCP responses |
| `outputs/openseo-1usd/phase1-analysis.md` | yes | intent classification of current FNSG rankings |
| `outputs/openseo-1usd/phase2-analysis.md` | yes | B2B keyword shortlist with volume/difficulty/county |
| `outputs/openseo-1usd/phase3-analysis.md` | yes | competitor map + final deliverables |
| `docs/superpowers/specs/2026-05-31-openseo-1usd-action-backlog.md` | yes | 30/60/90 follow-up plan |
| `.gitignore` | yes (modify) | add `outputs/**/raw/` |

**Important context** (Harvey is not a developer — this matters for plan ergonomics):
- Every MCP call below is invoked from this Claude Code session via the registered `openseo` MCP server. Tools surface as `mcp__openseo__<name>` once a fresh Claude Code session is started (per session handoff, current session may not have them yet — if missing, the first task halts and instructs Harvey to start a new session).
- The OpenSEO container is at http://localhost:3002. Verify it's running with `docker ps --filter name=open-seo-open-seo-1`.
- All costs below are estimates from the spec. Real costs come from the MCP response's reported DataForSEO `cost` field (1000 credits = $1). The budget log is updated with **actual** cost after each call.

---

## Task 1: Setup workspace + budget log + verify MCP tools available

**Files:**
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log.md`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/` (empty)
- Modify: `/Users/harveymcm1/Documents/Projects/Open-SEO/.gitignore` (append `outputs/**/raw/`)

- [ ] **Step 1.1: Create output directories**

Run:
```bash
mkdir -p /Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw
```
Expected: no output, directories created.

- [ ] **Step 1.2: Append raw outputs to .gitignore**

Use the Edit tool on `/Users/harveymcm1/Documents/Projects/Open-SEO/.gitignore`. Read the file first, then append at the end:

```
# Local research artifacts (raw API responses)
outputs/**/raw/
```

- [ ] **Step 1.3: Write budget-log.md skeleton**

Create `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log.md` with this exact content:

```markdown
# DataForSEO $1 Budget Log — FNSG B2B Pivot

Starting balance: $1.00 (1000 credits)
Hard cap: $0.85
Buffer floor: $0.15

| # | Phase | MCP tool | Args | Cost (credits) | Cost ($) | Cumulative ($) | Notes |
|---|---|---|---|---|---|---|---|
| 0 | — | (baseline) | — | 0 | 0.00 | 0.00 | starting point |
```

- [ ] **Step 1.4: Verify the openseo MCP server is reachable from this session**

Try invoking `mcp__openseo__whoami` (no arguments). Two possible outcomes:

- **PASS:** tool returns a result → MCP tools loaded in this session, proceed to Task 2.
- **FAIL (tool not found):** session predates the MCP registration. Halt execution and tell Harvey:
  > "El MCP openseo no está cargado en esta sesión. Necesito que abras una sesión nueva de Claude Code en este directorio y vuelvas a ejecutar el plan. Los archivos ya creados se mantienen."

- [ ] **Step 1.5: Verify the Docker container is up**

Run:
```bash
docker ps --filter name=open-seo-open-seo-1 --format '{{.Status}}'
```
Expected: starts with `Up`. If empty or `Exited`, halt and tell Harvey to run `docker compose start` from `/Users/harveymcm1/Documents/Projects/Open-SEO/`.

- [ ] **Step 1.6: Commit workspace setup**

```bash
cd /Users/harveymcm1/Documents/Projects/Open-SEO
git add .gitignore outputs/openseo-1usd/budget-log.md
git commit -m "chore: scaffold openseo-1usd outputs workspace"
```

Note: the `raw/` folder is empty and gitignored — it won't appear in the commit.

---

## Task 2: Phase 1 — Diagnostic snapshot of firstnationalstaffing.com

**Files:**
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p1_whoami.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p1_list_projects.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p1_domain_overview.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p1_domain_keyword_suggestions.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p1_backlinks_overview.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/phase1-analysis.md`
- Modify: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log.md`

- [ ] **Step 2.1: Call `mcp__openseo__whoami`**

No arguments. Save the entire response to `outputs/openseo-1usd/raw/p1_whoami.json` using the Write tool. This call is free.

- [ ] **Step 2.2: Call `mcp__openseo__list_projects`**

No arguments. Save the entire response to `outputs/openseo-1usd/raw/p1_list_projects.json`. This call is free.

Inspect the response. If a project for `firstnationalstaffing.com` exists, note its `id` for later use in Task 4 (`save_keywords`). If none exists, log this fact in `budget-log.md` notes column — we'll create one later via the OpenSEO web UI (don't burn an MCP call on project creation if the tool doesn't support it).

- [ ] **Step 2.3: Call `mcp__openseo__get_domain_overview`**

Arguments:
```json
{
  "domain": "firstnationalstaffing.com",
  "location_code": 2840,
  "language_code": "en"
}
```

(Adjust argument names if the actual tool schema differs — inspect the tool's schema via Claude Code's tool listing if Step 2.1 didn't already make it visible. Use `mcp__openseo__whoami`'s namespace as a hint.)

Save the entire response to `outputs/openseo-1usd/raw/p1_domain_overview.json`. Note the reported cost in credits from the response's `cost` field (DataForSEO API responses include this).

- [ ] **Step 2.4: Call `mcp__openseo__get_domain_keyword_suggestions`**

Arguments:
```json
{
  "domain": "firstnationalstaffing.com",
  "location_code": 2840,
  "language_code": "en",
  "limit": 50,
  "order_by": ["keyword_data.keyword_info.search_volume,desc"]
}
```

If the tool schema requires different argument names (e.g. `target` instead of `domain`), adapt and retry. Save the response to `outputs/openseo-1usd/raw/p1_domain_keyword_suggestions.json`.

- [ ] **Step 2.5: Call `mcp__openseo__get_backlinks_overview`**

Arguments:
```json
{
  "target": "firstnationalstaffing.com"
}
```

Save the response to `outputs/openseo-1usd/raw/p1_backlinks_overview.json`.

- [ ] **Step 2.6: Update budget-log.md with actual Phase 1 costs**

Use the Edit tool on `outputs/openseo-1usd/budget-log.md`. Append one row per call in Steps 2.1-2.5. For each, fill in actual `cost` from the response's reported field. Cumulative column is running total in dollars (credits / 1000).

Example row:
```
| 3 | 1 | get_domain_overview | firstnationalstaffing.com | 25 | 0.025 | 0.025 | DA=X, organic traffic=Y |
```

After all 5 Phase 1 rows added, double-check: cumulative should be ≤ $0.15. If it's higher, write a `**BUDGET ALERT**` line at the bottom and halt before Step 2.7.

- [ ] **Step 2.7: Write phase1-analysis.md with intent classification**

Read `outputs/openseo-1usd/raw/p1_domain_keyword_suggestions.json`. Extract the top 50 keywords (or however many were returned). For each keyword, classify intent per the spec rubric:

- `jobseeker` — worker looking for employment
- `buyer` — employer looking to hire staffing services
- `mixed` — ambiguous
- `brand` — "first national staffing" variant

Write `outputs/openseo-1usd/phase1-analysis.md` with this exact structure:

```markdown
# Phase 1 Analysis — FNSG Diagnostic Snapshot

**Domain:** firstnationalstaffing.com
**Date:** 2026-05-31
**Spend this phase:** $X.XX (from budget-log)

## Domain overview

- Domain authority / rank: [from p1_domain_overview.json]
- Estimated organic traffic: [value]
- Total ranking keywords: [value]
- Total backlinks: [from p1_backlinks_overview.json]
- Referring domains: [value]

## Top 50 ranking keywords — intent classification

| # | Keyword | Position | Search volume | Est. traffic | Intent | Reason |
|---|---|---|---|---|---|---|
| 1 | [keyword] | [pos] | [vol] | [traffic] | jobseeker | "jobs" in query |
| ... |

## Summary

- **Jobseeker intent:** N keywords (~X% of estimated organic traffic)
- **Buyer intent:** N keywords (~X%)
- **Mixed:** N keywords (~X%)
- **Brand:** N keywords (~X%)

## Initial backlink read

- Notable referring domains: [list]
- Anchor text concentration: [note any over-optimization or brand-heavy patterns]

## Decision point

[Recommendation: proceed to Phase 2 yes/no with one-sentence rationale]
```

- [ ] **Step 2.8: CHECKPOINT — present Phase 1 to Harvey**

Stop. Show Harvey the summary table from `phase1-analysis.md`. Use this exact prompt:

> "Fase 1 completa. Gasto acumulado: $X.XX. Intent breakdown: X% jobseeker / Y% buyer / Z% mixed / W% brand. Esto valida la tesis del pivot. ¿Procedo a Fase 2 (research B2B-intent, 8 calls, ~$0.28-0.40)?"

Do NOT proceed to Task 3 until Harvey confirms.

- [ ] **Step 2.9: Commit Phase 1 analysis**

```bash
cd /Users/harveymcm1/Documents/Projects/Open-SEO
git add outputs/openseo-1usd/phase1-analysis.md outputs/openseo-1usd/budget-log.md
git commit -m "research(openseo-1usd): phase 1 diagnostic — FNSG intent classification"
```

---

## Task 3: Phase 2 — B2B-intent keyword research (8 seed keywords)

**Files:**
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_01_warehouse_staffing_atlanta.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_02_3pl_staffing_partner.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_03_temp_labor_warehouse_georgia.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_04_light_industrial_staffing_atlanta.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_05_recycling_staffing.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_06_hospitality_staffing_atlanta_hotel.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_07_staffing_mcdonough.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/raw/p2_kw_08_staffing_forest_park.json`
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/phase2-analysis.md`
- Modify: `/Users/harveymcm1/Documents/Projects/Open-SEO/outputs/openseo-1usd/budget-log.md`

- [ ] **Step 3.1: Pre-flight budget check**

Read current cumulative in `budget-log.md`. If cumulative > $0.30 already (Phase 1 overran), halt and tell Harvey:
> "Fase 1 gastó más de lo esperado ($X.XX). Si seguimos a Fase 2 podemos pasarnos del cap de $0.85. ¿Procedo de todas formas, reduzco a 4 seeds en vez de 8, o abortamos?"

Otherwise continue.

- [ ] **Step 3.2: Run 8 `mcp__openseo__research_keywords` calls (one per seed)**

For each of the 8 seeds, invoke the tool with arguments shaped like:

```json
{
  "keyword": "<seed>",
  "location_code": 2840,
  "language_code": "en",
  "limit": 150
}
```

(Use the exact argument names defined by the tool's schema — adapt if needed.)

The 8 seeds (use these exact strings):
1. `warehouse staffing agency atlanta`
2. `3PL staffing partner`
3. `temporary labor warehouse georgia`
4. `light industrial staffing atlanta`
5. `recycling staffing company`
6. `hospitality staffing atlanta hotel`
7. `staffing agency mcdonough`
8. `staffing agency forest park`

After each call: save raw response to the corresponding file in `outputs/openseo-1usd/raw/p2_kw_NN_*.json` and update `budget-log.md` with one row including actual cost.

**Mid-phase budget check** after seed 4: if cumulative > $0.50, halt and ask Harvey whether to continue.

- [ ] **Step 3.3: Apply selection filter and write phase2-analysis.md**

Merge all 8 raw response sets. For each unique keyword across them, capture: `keyword`, `search_volume`, `keyword_difficulty` (or `keyword_properties.competition`), `cpc`, `intent` (your manual tag per the rubric), and target county.

Apply filter:
- `search_volume >= 30`
- `keyword_difficulty <= 50` (relaxed from 40 only if buyer intent is unambiguous from the keyword text)
- Intent classified as `buyer` OR `mixed` with strong buyer-leaning SERP hints
- Excludes "jobs", "hiring", "careers" unless buyer SERP confirmed

Pick the top 10-15. Write `outputs/openseo-1usd/phase2-analysis.md`:

```markdown
# Phase 2 Analysis — B2B-Intent Keyword Shortlist

**Date:** 2026-05-31
**Phase 2 spend:** $X.XX
**Cumulative:** $X.XX

## Seed performance

| Seed | Total keywords returned | Buyer-intent in result | Avg KD | Best find |
|---|---|---|---|---|
| warehouse staffing agency atlanta | N | N | X | "keyword" |
| ... |

## Shortlist (10-15)

| Rank | Keyword | Volume | KD | CPC | Intent | Target county | Why it makes the list |
|---|---|---|---|---|---|---|---|
| 1 | [keyword] | [vol] | [kd] | [cpc] | buyer | Fulton | strong commercial intent + reachable difficulty |
| ... |

## Top 5 for Phase 3 SERP validation

1. [keyword]
2. [keyword]
3. [keyword]
4. [keyword]
5. [keyword]

## Surprises / notes

- [anything unexpected]
```

- [ ] **Step 3.4: CHECKPOINT — present Phase 2 to Harvey**

Show Harvey the shortlist table and the top 5 selected for Phase 3. Use this prompt:

> "Fase 2 completa. Gasto acumulado: $X.XX. Shortlist B2B de N keywords adjunta. Top 5 para validación SERP: [list]. ¿Aprueba el top 5 o quieres swap? Si OK, procedo a Fase 3 (5 SERP calls + save_keywords, ~$0.02)."

Do NOT proceed to Task 4 until Harvey confirms the top 5.

- [ ] **Step 3.5: Commit Phase 2 analysis**

```bash
cd /Users/harveymcm1/Documents/Projects/Open-SEO
git add outputs/openseo-1usd/phase2-analysis.md outputs/openseo-1usd/budget-log.md
git commit -m "research(openseo-1usd): phase 2 B2B keyword shortlist"
```

---

## Task 4: Phase 3 — SERP validation + competitor mapping + save_keywords

**Files:**
- Create: `outputs/openseo-1usd/raw/p3_serp_01.json` through `p3_serp_05.json`
- Create: `outputs/openseo-1usd/raw/p3_save_keywords.json`
- Create: `outputs/openseo-1usd/phase3-analysis.md`
- Modify: `outputs/openseo-1usd/budget-log.md`

- [ ] **Step 4.1: Pre-flight budget check**

If cumulative > $0.75, halt and notify Harvey before any Phase 3 call.

- [ ] **Step 4.2: Call `mcp__openseo__get_serp_results` for each of the top 5 keywords**

For each keyword from Step 3.4's approved top 5:

```json
{
  "keyword": "<approved keyword>",
  "location_code": 2840,
  "language_code": "en",
  "device": "desktop"
}
```

Save each response to `outputs/openseo-1usd/raw/p3_serp_NN.json`. Update budget-log row by row.

- [ ] **Step 4.3: Build competitor map**

Across the 5 SERP responses, extract all organic top-10 domains. Count appearances. Domains appearing in 2+ of the 5 SERPs are real organic competitors. Domains appearing only once but in position 1-3 are also flagged.

- [ ] **Step 4.4: Call `mcp__openseo__save_keywords` to persist the shortlist in OpenSEO**

If Step 2.2 found an existing FNSG project ID, use it. If not, halt and tell Harvey:
> "No hay proyecto FNSG en OpenSEO. Crea uno en http://localhost:3002 (botón 'New Project', domain firstnationalstaffing.com) y pásame el ID."

Arguments shape:
```json
{
  "project_id": "<id from step 2.2 or manual>",
  "keywords": [
    {"keyword": "<keyword 1>", "tags": ["b2b", "<county>"]},
    {"keyword": "<keyword 2>", "tags": ["b2b", "<county>"]}
  ]
}
```

Tag each keyword with its target county (from phase2-analysis.md) plus `b2b`. Save response to `outputs/openseo-1usd/raw/p3_save_keywords.json`.

- [ ] **Step 4.5: Write phase3-analysis.md with final deliverables**

Create `outputs/openseo-1usd/phase3-analysis.md`:

```markdown
# Phase 3 Analysis — SERP Validation & Final Deliverables

**Date:** 2026-05-31
**Phase 3 spend:** $X.XX
**Total spend (all phases):** $X.XX of $1.00 budget
**Hard cap respected:** YES / NO

## SERP validation — top 5 keywords

### 1. [keyword]
- Top 10 result domains: [comma list]
- SERP intent confirmation: buyer / mixed / jobseeker / inconclusive
- Verdict: KEEP / DROP

[Repeat for 5]

## Competitor map

| Domain | Appearances in 5 SERPs | Avg position | Notes |
|---|---|---|---|
| competitor1.com | 5 | 3.4 | Dominant — full national staffing brand |
| competitor2.com | 4 | 5.2 | Regional GA staffing |
| ... |

**Top 3-5 real organic competitors for FNSG B2B:** [list]

## Final shortlist saved to OpenSEO project

Project ID: `<id>`
Keywords saved: N
Tag scheme: each keyword tagged with `b2b` + target county.

## Kill list (from Phase 1)

Keywords FNSG currently ranks for that we recommend de-prioritizing:

1. [keyword] — jobseeker intent, estimated X visits/mo that don't convert
2. [keyword] — ...
[at least 5, up to 20]
```

- [ ] **Step 4.6: Update budget-log with final totals**

Add a final summary block at the bottom of `budget-log.md`:

```markdown
## Final summary

- Total spend: $X.XX
- Within hard cap of $0.85: YES / NO
- Remaining credit: $X.XX
- Calls made: N
- Recommendation for next top-up: $XX.XX based on planned follow-up research scope
```

- [ ] **Step 4.7: Commit Phase 3**

```bash
cd /Users/harveymcm1/Documents/Projects/Open-SEO
git add outputs/openseo-1usd/phase3-analysis.md outputs/openseo-1usd/budget-log.md
git commit -m "research(openseo-1usd): phase 3 SERP validation + competitor map + shortlist saved"
```

---

## Task 5: 30/60/90-day action backlog (no API calls — synthesis only)

**Files:**
- Create: `/Users/harveymcm1/Documents/Projects/Open-SEO/docs/superpowers/specs/2026-05-31-openseo-1usd-action-backlog.md`

- [ ] **Step 5.1: Synthesize Phase 1+2+3 outputs into a concrete backlog**

Read `outputs/openseo-1usd/phase1-analysis.md`, `phase2-analysis.md`, `phase3-analysis.md`. Group concrete next actions into time horizons. Each action must reference specific keywords or competitor domains from the analyses — no generic advice.

Create `docs/superpowers/specs/2026-05-31-openseo-1usd-action-backlog.md`:

```markdown
# FNSG SEO Action Backlog — Post $1 OpenSEO Research

**Date:** 2026-05-31
**Source:** outputs/openseo-1usd/phase{1,2,3}-analysis.md

## 30-day actions (quick wins)

- [ ] **Action 1:** Create county-specific service page for `<top keyword>` targeting `<county>`. Reference: phase2-analysis.md shortlist row N.
  - Effort: ~2-4 hrs writing + dev
  - Owner: [TBD by Harvey]
- [ ] **Action 2:** [specific, keyword-referenced]
- [ ] **Action 3:** ...

## 60-day actions (structural)

- [ ] **Action N:** Reverse-engineer backlinks of `<competitor>` (from phase3-analysis.md). Budget ~$1-2 DataForSEO top-up.
- [ ] ...

## 90-day actions (compounding)

- [ ] **Action N:** Set up monthly rank tracking for shortlist via `mcp__openseo__get_rank_tracker`. Budget ~$0.50/mo.
- [ ] ...

## Kill list — stop optimizing for these

[from phase3-analysis.md kill list — copy in full]

## Open questions

- [ ] Should FNSG website mention specific county names in service area schema markup? (likely yes)
- [ ] LinkedIn Ads targeting based on top competitor employee titles — separate `ads-linkedin` skill engagement
```

- [ ] **Step 5.2: Final commit**

```bash
cd /Users/harveymcm1/Documents/Projects/Open-SEO
git add docs/superpowers/specs/2026-05-31-openseo-1usd-action-backlog.md
git commit -m "docs: 30/60/90 action backlog from openseo-1usd research"
```

- [ ] **Step 5.3: Report back to Harvey**

Final message format:

> "Hecho. Gasto total: $X.XX de $1.00. Outputs en `outputs/openseo-1usd/`. Action backlog en `docs/superpowers/specs/2026-05-31-openseo-1usd-action-backlog.md`. Próxima decisión: ¿atacamos las 30-day actions ahora, o necesitas revisar primero?"

---

## Success criteria (mirrors spec)

- [ ] Total spend ≤ $0.85
- [ ] Intent classification table delivered for top 50 current keywords (Phase 1 output)
- [ ] ≥10 B2B buyer-intent keywords saved in OpenSEO project, each tagged with target county
- [ ] ≥3 real competitor domains identified by SERP overlap
- [ ] 30/60/90-day action backlog committed under `docs/superpowers/specs/`
- [ ] All 5 commits landed on `main` (or feature branch if Harvey prefers — verify before commit)

---

## Failure modes and how to handle

| Failure | Detection | Response |
|---|---|---|
| MCP tools not in session | Step 1.4 returns "tool not found" | Halt, instruct Harvey to start new Claude Code session |
| Container down | Step 1.5 shows no `Up` | Halt, instruct `docker compose start` |
| Budget overrun mid-phase | budget-log cumulative > stage cap | Halt before next call, present Harvey with continue/reduce/abort options |
| Tool schema mismatch | MCP call returns validation error | Inspect schema, adjust arg names, retry once; if fails again, halt and ask Harvey |
| Empty / sparse keyword response | <20 keywords in any seed result | Continue but note in phase2-analysis.md; do not auto-retry (would burn budget) |
| `save_keywords` fails (no project) | Step 4.4 errors | Halt at 4.4, ask Harvey to create project in web UI and supply ID |
| DataForSEO API auth error | Any call returns 401 from underlying API | Halt, inspect `.env` `DATAFORSEO_API_KEY`, do not retry |
