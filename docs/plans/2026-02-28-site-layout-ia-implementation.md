# Site Layout and IA Refresh Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Rework the site into a clean hub-and-spoke experience that highlights research focus and collaboration pathways for collaborators/hiring committees while remaining usable for students.

**Architecture:** Preserve the existing hero concept, make homepage a concise routing hub, and move depth to spoke pages (`Research`, `Publications`, `Tools`, `CV`, `Contact`). Implement a scoped visual system via custom CSS, with lightweight smoke checks that validate expected routes/content after each task.

**Tech Stack:** Hugo, Hugo Blox Academic CV blocks, YAML/Markdown content, CSS, Bash + `rg` smoke checks

---

## Execution Notes

- Apply `@test-driven-development` at the task level (add expectation -> see it fail -> implement -> pass).
- Apply `@verification-before-completion` before each commit and at final handoff.
- Keep commits small and frequent.
- Do not edit generated outputs under `public/` or `resources/`.

### Task 1: Add layout smoke-test harness

**Files:**
- Create: `scripts/verify_site_layout.sh`
- Create: `tests/site_expectations.txt`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Create `tests/site_expectations.txt`:

```text
# FILE|TEXT
public/index.html|Start here
public/index.html|Flagship Papers
public/research/index.html|Research Themes
public/contact/index.html|Collaborate
```

Create `scripts/verify_site_layout.sh`:

```bash
#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

hugo --cleanDestinationDir --gc >/tmp/hugo-layout-check.log

while IFS='|' read -r file needle; do
  [[ -z "${file}" || "${file:0:1}" == "#" ]] && continue

  if [[ ! -f "${file}" ]]; then
    echo "FAIL: missing file ${file}"
    exit 1
  fi

  if ! rg -Fq "${needle}" "${file}"; then
    echo "FAIL: '${needle}' not found in ${file}"
    exit 1
  fi
done < tests/site_expectations.txt

echo "PASS: site layout expectations met"
```

**Step 2: Run test to verify it fails**

Run: `bash scripts/verify_site_layout.sh`  
Expected: FAIL because `public/research/index.html` and `public/contact/index.html` do not exist yet.

**Step 3: Minimal implementation**

Make script executable:

```bash
chmod +x scripts/verify_site_layout.sh
```

No content changes in this task; keep failure for next task.

**Step 4: Re-run to confirm still failing for the right reason**

Run: `bash scripts/verify_site_layout.sh`  
Expected: FAIL only on missing pages/strings (not syntax or script errors).

**Step 5: Commit**

```bash
git add scripts/verify_site_layout.sh tests/site_expectations.txt
git commit -m "test: add site layout smoke-check harness"
```

### Task 2: Implement top-level IA and spoke page skeletons

**Files:**
- Modify: `config/_default/menus.yaml`
- Create: `content/research.md`
- Create: `content/contact.md`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Append to `tests/site_expectations.txt`:

```text
public/research/index.html|Selected Research
public/contact/index.html|Collaboration
public/index.html|/contact/
```

**Step 2: Run test to verify it fails**

Run: `bash scripts/verify_site_layout.sh`  
Expected: FAIL on newly added `Selected Research` / `Collaboration` expectations.

**Step 3: Write minimal implementation**

Update `config/_default/menus.yaml` to:

```yaml
main:
  - name: Home
    url: /
    weight: 10
  - name: Research
    url: /research/
    weight: 20
  - name: Publications
    url: /publication/
    weight: 30
  - name: Tools
    url: /tools/
    weight: 40
  - name: CV
    url: /experience/
    weight: 50
  - name: Contact
    url: /contact/
    weight: 60
```

Create `content/research.md`:

```yaml
---
title: "Research"
date: 2026-02-28
type: landing
design:
  spacing: "5rem"
sections:
  - block: markdown
    content:
      title: "Selected Research"
      text: |
        Research Themes

        I develop computational and modeling methods for neurodevelopmental MRI, with emphasis on diffusion MRI, structure-function relationships, and clinically useful normative frameworks.
  - block: collection
    content:
      title: "Flagship Papers"
      filters:
        folders:
          - publication
        featured_only: true
    design:
      view: showcase
      columns: 1
---
```

Create `content/contact.md`:

```yaml
---
title: "Contact"
date: 2026-02-28
type: landing
design:
  spacing: "5rem"
sections:
  - block: markdown
    content:
      title: "Collaboration"
      text: |
        Collaborate

        I welcome conversations on neuroimaging methods, translational applications, and trainee mentoring.

        - Email: [kmhuynh@med.unc.edu](mailto:kmhuynh@med.unc.edu)
        - LinkedIn: [Khoi Minh Huynh](https://www.linkedin.com/in/khoi-minh-huynh/)
---
```

**Step 4: Run test to verify it passes**

Run: `bash scripts/verify_site_layout.sh`  
Expected: PASS for all current expectations.

**Step 5: Commit**

```bash
git add config/_default/menus.yaml content/research.md content/contact.md
git commit -m "feat: add hub-and-spoke nav with research and contact pages"
```

### Task 3: Refactor homepage into a concise hub (hero preserved)

**Files:**
- Modify: `content/_index.md`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Append to `tests/site_expectations.txt`:

```text
public/index.html|Research focus
public/index.html|Work with Me
public/index.html|Tools and Code
```

**Step 2: Run test to verify it fails**

Run: `bash scripts/verify_site_layout.sh`  
Expected: FAIL on one or more new homepage labels.

**Step 3: Write minimal implementation**

In `content/_index.md`:
1. Keep `resume-biography-3` hero block (existing concept).
2. Replace the long mid-page narrative block with concise summary including text `Research focus`.
3. Add a markdown "Start here" quick-links block that includes link labels:
   - `Flagship Papers`
   - `Research Themes`
   - `Tools and Code`
   - `Work with Me`
4. Keep `Research Highlights` and `Recent Publications`.
5. Remove (or move off homepage) low-priority blocks that add scan friction (`Recent & Upcoming Talks`, `Recent News`).

Use this quick-link snippet inside the new markdown block:

```html
<div class="hub-quick-links">
  <a class="hub-card" href="/publication/">Flagship Papers</a>
  <a class="hub-card" href="/research/">Research Themes</a>
  <a class="hub-card" href="/tools/">Tools and Code</a>
  <a class="hub-card" href="/contact/">Work with Me</a>
</div>
```

**Step 4: Run test to verify it passes**

Run: `bash scripts/verify_site_layout.sh`  
Expected: PASS.

**Step 5: Commit**

```bash
git add content/_index.md
git commit -m "feat: convert homepage to concise hub with quick links"
```

### Task 4: Align `Tools` and `Posts` pages with the new IA

**Files:**
- Modify: `content/tools/index.md`
- Modify: `content/posts.md`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Append to `tests/site_expectations.txt`:

```text
public/tools/index.html|Code Repositories
public/tools/index.html|Resource status
public/posts/index.html|Research Insights
```

**Step 2: Run test to verify it fails**

Run: `bash scripts/verify_site_layout.sh`  
Expected: FAIL on one or more updated labels.

**Step 3: Write minimal implementation**

`content/tools/index.md` changes:
1. Keep title and purpose but remove promotional tone.
2. Normalize tool entries into a repeated structure:
   - `What it does`
   - `Who it is for`
   - `Resource status` (`Active`, `In progress`, etc.)
   - `Link`

Add this heading line in the page body:

```markdown
### Resource status
```

`content/posts.md` changes:
1. Retitle primary block to `Research Insights`.
2. Remove publication duplication on this page (keep it post-focused).
3. Keep list layout (`date-title-summary`) for easy scanning.

**Step 4: Run test to verify it passes**

Run: `bash scripts/verify_site_layout.sh`  
Expected: PASS.

**Step 5: Commit**

```bash
git add content/tools/index.md content/posts.md
git commit -m "feat: align tools and posts pages with hub-and-spoke IA"
```

### Task 5: Implement scoped visual system CSS and remove fragile selectors

**Files:**
- Modify: `assets/css/custom.css`
- Test: `assets/css/custom.css` + `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Run these checks first (expected to fail before refactor):

```bash
rg -n ":contains\\(" assets/css/custom.css
rg -n "^p, \\.abstract, \\.summary" assets/css/custom.css
```

Expected: at least one match for fragile selectors/global overrides.

**Step 2: Run site smoke test (baseline)**

Run: `bash scripts/verify_site_layout.sh`  
Expected: PASS before CSS refactor so any later failure is attributable to CSS edits.

**Step 3: Write minimal implementation**

Refactor `assets/css/custom.css`:
1. Remove unsupported `:contains(...)` selectors.
2. Remove broad global paragraph justification selectors.
3. Add scoped styles for hub cards and contact sections.

Add/update with this CSS block:

```css
:root {
  --hub-border: #d1d5db;
  --hub-text: #1f2937;
  --hub-muted: #4b5563;
  --hub-accent: #059669;
}

.hub-quick-links {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  gap: 0.75rem;
  margin-top: 1rem;
}

.hub-card {
  display: block;
  padding: 0.9rem 1rem;
  border: 1px solid var(--hub-border);
  border-radius: 0.75rem;
  color: var(--hub-text);
  background: #ffffff;
  text-decoration: none;
  font-weight: 600;
}

.hub-card:hover,
.hub-card:focus-visible {
  border-color: var(--hub-accent);
  outline: none;
}

.contact-options {
  color: var(--hub-muted);
}
```

**Step 4: Run tests to verify it passes**

Run:

```bash
rg -n ":contains\\(" assets/css/custom.css
bash scripts/verify_site_layout.sh
```

Expected:
- First command returns no matches.
- Smoke test passes.

**Step 5: Commit**

```bash
git add assets/css/custom.css
git commit -m "style: add scoped visual system and remove fragile CSS selectors"
```

### Task 6: Professionalize profile/CV content emphasis

**Files:**
- Modify: `content/authors/admin/_index.md`
- Modify: `content/experience.md`
- Test: `scripts/verify_site_layout.sh`

**Step 1: Write the failing test**

Append to `tests/site_expectations.txt`:

```text
public/experience/index.html|Download CV
public/index.html|Collaborate
```

Run check for emoji-heavy headings to trim:

```bash
rg -n "🎒|🌵|🦬|🏕️" content/authors/admin/_index.md
```

Expected: matches exist.

**Step 2: Run test to verify baseline**

Run: `bash scripts/verify_site_layout.sh`  
Expected: PASS before profile edits.

**Step 3: Write minimal implementation**

In `content/authors/admin/_index.md`:
1. Keep warmth, reduce novelty-heavy labels in skills/hobbies headings.
2. Keep hobby content but rename sections to professional labels:
   - `Outside Research`
   - `Upcoming National Parks`
3. Ensure collaboration language appears in bio/about text (`Collaborate` keyword).

In `content/experience.md`:
1. Keep `Download CV` action.
2. Ensure section ordering supports quick committee scanning (experience before education remains).

**Step 4: Run tests to verify it passes**

Run:

```bash
bash scripts/verify_site_layout.sh
rg -n "🎒|🌵|🦬|🏕️" content/authors/admin/_index.md
```

Expected:
- Smoke test passes.
- Emoji-heavy heading matches are reduced to acceptable content-only usage.

**Step 5: Commit**

```bash
git add content/authors/admin/_index.md content/experience.md
git commit -m "content: tune profile and cv emphasis for professional audience"
```

### Task 7: Update editing map and complete full verification

**Files:**
- Modify: `CONTENT_MAP.md`
- Modify: `README.md` (optional short pointer to plan and smoke test)
- Test: full verification commands below

**Step 1: Write the failing test**

Append to `tests/site_expectations.txt`:

```text
public/index.html|/research/
public/index.html|/contact/
```

Run:

```bash
bash scripts/verify_site_layout.sh
```

Expected: PASS already, this confirms route links persist.

**Step 2: Run verification checks before docs update**

Run:

```bash
hugo --gc --minify
bash scripts/verify_site_layout.sh
```

Expected: both exit 0.

**Step 3: Write minimal implementation**

Update `CONTENT_MAP.md`:
1. Add `Research` and `Contact` pages in navigation and page-edit tables.
2. Mark homepage as hub page with quick-link card section.
3. Add `scripts/verify_site_layout.sh` to "After Editing" workflow.

Optional `README.md` update:
- Add one short line under customization notes:
  - `Run bash scripts/verify_site_layout.sh after structural edits.`

**Step 4: Run final verification**

Run:

```bash
hugo --gc --minify
bash scripts/verify_site_layout.sh
git status --short
```

Expected:
- Hugo build succeeds.
- Smoke test passes.
- `git status` shows only intended tracked modifications.

**Step 5: Commit**

```bash
git add CONTENT_MAP.md README.md tests/site_expectations.txt
git commit -m "docs: update editing map and finalize IA refresh verification"
```

## Final Completion Gate

Before marking implementation complete:
1. `hugo --gc --minify` returns success.
2. `bash scripts/verify_site_layout.sh` returns `PASS`.
3. Manual spot-check (desktop + mobile):
   - `/`
   - `/research/`
   - `/publication/`
   - `/tools/`
   - `/experience/`
   - `/contact/`
4. Navigation path quality:
   - collaborator/hiring route reachable in <= 3 clicks
5. No generated files under `public/` are committed unless intentionally requested.
