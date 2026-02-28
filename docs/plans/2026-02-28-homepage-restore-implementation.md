# Homepage Restore (cd08864 Baseline) Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Restore the homepage, navigation, and theme feel to commit `cd08864`, with only a constrained typography-scale polish.

**Architecture:** Use a snapshot-restore-first strategy on three scoped files (`content/_index.md`, `config/_default/menus.yaml`, `assets/css/custom.css`) to recover prior behavior reliably. After restore, apply minimal typography-only edits in CSS, then verify through source-level expectation checks and targeted diffs. Keep all other site architecture unchanged.

**Tech Stack:** Hugo, Hugo Blox content YAML/Markdown, CSS, Git, Bash (`rg`, `sed`)

---

## Execution Status (2026-02-28)

Status:
- Completed on branch `codex/homepage-restore` and pushed to origin

Key implementation commits:
1. `e5f99d5` test: add restore expectations for homepage and nav baseline
2. `a32f54c` test: fix nav expectation matching for verify script
3. `4074887` restore: revert homepage structure to cd08864 baseline
4. `40cd5b5` restore: revert navigation labels and links to cd08864
5. `8c79983` restore: revert custom css to cd08864 baseline
6. `cbe9095` style: apply typography-scale polish on restored baseline
7. `bc98ccc` test: add forbidden-marker guard for homepage restore
8. `8b85f3e` docs: finalize content map for restored homepage baseline

Verification evidence:
1. `bash scripts/verify_site_layout.sh` -> PASS
2. `bash scripts/verify_restore_absence.sh` -> PASS
3. `git diff --stat cd08864 -- content/_index.md config/_default/menus.yaml assets/css/custom.css` -> only `assets/css/custom.css` differs (typography polish)

PR URL:
- https://github.com/kmhuynh/hugoblox-academic-cv/pull/new/codex/homepage-restore

## Execution Notes

- Apply `@test-driven-development` behavior at task level: add failing expectation -> implement minimal change -> pass.
- Apply `@verification-before-completion` before each commit.
- Keep commits small and scoped to source files only.
- Do not include generated files (`public/`, `resources/`) in this implementation sequence unless explicitly requested.

### Task 1: Add restore-specific expectation checks

**Files:**
- Modify: `tests/site_expectations.txt`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Update `tests/site_expectations.txt` to include restore expectations:

```text
# Presence checks (old baseline)
content/_index.md|title: '📚 My Research'
content/_index.md|title: 🔬 Research Highlights
content/_index.md|id: talks
content/_index.md|id: news
config/_default/menus.yaml|- name: Papers
config/_default/menus.yaml|- name: Talks
config/_default/menus.yaml|- name: News

# Absence checks encoded as sentinel text that should NOT appear
# (validated by explicit rg command in Step 2)
```

**Step 2: Run test to verify it fails**

Run:

```bash
bash scripts/verify_site_layout.sh
rg -n "Start here|hub-card|hub-quick-links|name: Research|name: Publications|name: Contact" content/_index.md config/_default/menus.yaml assets/css/custom.css
```

Expected:
- `verify_site_layout.sh` FAILS for missing restored labels/sections.
- `rg` finds current hub-era markers.

**Step 3: Write minimal implementation**

Do not restore files yet in this task. Keep failure as baseline for next task.

**Step 4: Re-run to verify failure remains correct**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL with restore expectations missing.

**Step 5: Commit**

```bash
git add tests/site_expectations.txt
git commit -m "test: add restore expectations for homepage and nav baseline"
```

### Task 2: Restore homepage structure from cd08864

**Files:**
- Modify: `content/_index.md` (replace with baseline content from `cd08864`)
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Re-run baseline check:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL (if Task 1 completed correctly).

**Step 2: Run test to verify it fails**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL due missing old homepage markers.

**Step 3: Write minimal implementation**

Restore file directly from commit `cd08864`:

```bash
git show cd08864:content/_index.md > content/_index.md
```

**Step 4: Run test to verify partial pass**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected:
- Some checks pass.
- Nav/CSS-related checks may still fail until next tasks.

**Step 5: Commit**

```bash
git add content/_index.md
git commit -m "restore: revert homepage structure to cd08864 baseline"
```

### Task 3: Restore navigation labels/links from cd08864

**Files:**
- Modify: `config/_default/menus.yaml` (replace with baseline content from `cd08864`)
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL on `Papers/Talks/News` nav expectations.

**Step 2: Run test to verify it fails**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL persists.

**Step 3: Write minimal implementation**

Restore nav file from commit `cd08864`:

```bash
git show cd08864:config/_default/menus.yaml > config/_default/menus.yaml
```

**Step 4: Run test to verify pass/near-pass**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected:
- Presence checks for homepage/nav pass.
- CSS legacy marker checks still pending until Task 4.

**Step 5: Commit**

```bash
git add config/_default/menus.yaml
git commit -m "restore: revert navigation labels and links to cd08864"
```

### Task 4: Restore custom CSS baseline and remove hub-card styles

**Files:**
- Modify: `assets/css/custom.css` (replace with `cd08864`, then typography-only edits in Task 5)
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Run sentinel check:

```bash
rg -n "hub-card|hub-quick-links|--hub-" assets/css/custom.css
```

Expected: Finds hub-era CSS markers before restore.

**Step 2: Run test to verify it fails**

Run:

```bash
rg -n "hub-card|hub-quick-links|--hub-" assets/css/custom.css
```

Expected: non-empty output.

**Step 3: Write minimal implementation**

Restore CSS from baseline:

```bash
git show cd08864:assets/css/custom.css > assets/css/custom.css
```

**Step 4: Run test to verify it passes**

Run:

```bash
if rg -n "hub-card|hub-quick-links|--hub-" assets/css/custom.css; then
  echo "FAIL: hub markers remain"
  exit 1
else
  echo "PASS: hub markers removed"
fi
```

Expected: `PASS: hub markers removed`.

**Step 5: Commit**

```bash
git add assets/css/custom.css
git commit -m "restore: revert custom css to cd08864 baseline"
```

### Task 5: Apply typography-scale-only polish

**Files:**
- Modify: `assets/css/custom.css`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Add explicit typography expectations to `tests/site_expectations.txt`:

```text
assets/css/custom.css|/* TYPOGRAPHY POLISH */
assets/css/custom.css|line-height: 1.65;
assets/css/custom.css|font-size: clamp(1.75rem, 3vw, 2.15rem);
```

**Step 2: Run test to verify it fails**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: FAIL because typography block does not exist yet.

**Step 3: Write minimal implementation**

Append this exact scoped block to `assets/css/custom.css`:

```css
/* TYPOGRAPHY POLISH */
.prose h1,
.article-title {
  font-size: clamp(1.75rem, 3vw, 2.15rem);
  line-height: 1.2;
}

.prose h2 {
  font-size: clamp(1.35rem, 2.2vw, 1.65rem);
  line-height: 1.28;
}

.prose p,
.content p,
.article-style p {
  line-height: 1.65;
}
```

Constraint:
- Do not add spacing/card/button/nav redesign rules.

**Step 4: Run test to verify it passes**

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: PASS.

**Step 5: Commit**

```bash
git add assets/css/custom.css tests/site_expectations.txt
git commit -m "style: apply typography-scale polish on restored baseline"
```

### Task 6: Add negative-check script for forbidden hub markers

**Files:**
- Create: `scripts/verify_restore_absence.sh`
- Test: `scripts/verify_restore_absence.sh`

**Step 1: Write the failing test**

Create script with expected forbidden markers:

```bash
#!/usr/bin/env bash
set -euo pipefail

if rg -n "Start here|hub-card|hub-quick-links|name: Research|name: Publications|name: Contact" \
  content/_index.md config/_default/menus.yaml assets/css/custom.css; then
  echo "FAIL: forbidden restore markers found"
  exit 1
fi

echo "PASS: no forbidden hub-era markers"
```

**Step 2: Run test to verify it fails (if run before full restore)**

Run:

```bash
bash scripts/verify_restore_absence.sh
```

Expected:
- If restore incomplete: FAIL.
- If restore already complete: PASS (acceptable because file is newly added as guard).

**Step 3: Write minimal implementation**

Set executable bit:

```bash
chmod +x scripts/verify_restore_absence.sh
```

**Step 4: Run test to verify it passes now**

Run:

```bash
bash scripts/verify_restore_absence.sh
```

Expected: PASS.

**Step 5: Commit**

```bash
git add scripts/verify_restore_absence.sh
git commit -m "test: add forbidden-marker guard for homepage restore"
```

### Task 7: Final verification and documentation sync

**Files:**
- Modify: `CONTENT_MAP.md` (if references current hub-card model)
- Test: final command set below

**Step 1: Write the failing test**

Run:

```bash
rg -n "Start here|hub-card|Research/Publications/Tools/CV/Contact" CONTENT_MAP.md
```

Expected: If stale references exist, command returns matches.

**Step 2: Run test to verify it fails (or identify no-op)**

Run:

```bash
rg -n "Start here|hub-card" CONTENT_MAP.md
```

Expected:
- If matches: update needed.
- If no matches: no-op update acceptable.

**Step 3: Write minimal implementation**

Ensure map text aligns with restored nav and homepage structure.

**Step 4: Run final verification**

Run:

```bash
bash scripts/verify_site_layout.sh
bash scripts/verify_restore_absence.sh
if rg -n "hub-card|hub-quick-links|--hub-" assets/css/custom.css; then exit 1; fi
git status --short
```

Expected:
- Both verification scripts PASS.
- No forbidden hub CSS markers.
- Only intended tracked source files changed.

**Step 5: Commit**

```bash
git add CONTENT_MAP.md tests/site_expectations.txt
git commit -m "docs: finalize content map for restored homepage baseline"
```

## Final Completion Gate

Before claiming completion:
1. `bash scripts/verify_site_layout.sh` passes.
2. `bash scripts/verify_restore_absence.sh` passes.
3. `git diff cd08864 -- content/_index.md config/_default/menus.yaml assets/css/custom.css` shows only intended typography deviation in CSS.
4. Work remains restore-faithful with no reintroduction of hub-card patterns.
