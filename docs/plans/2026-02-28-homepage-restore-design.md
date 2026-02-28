# Homepage Restore Design (cd08864 Baseline)

Date: 2026-02-28  
Status: Implemented on `codex/homepage-restore` (pending merge to `main`)  
Scope: Restore homepage/nav/theme feel to pre-redesign baseline with one constrained enhancement (typography scale only)

## Implementation Snapshot (2026-02-28)

Execution branch:
- `codex/homepage-restore`

Primary verification results:
1. `bash scripts/verify_site_layout.sh` -> PASS
2. `bash scripts/verify_restore_absence.sh` -> PASS
3. Baseline parity diff check vs `cd08864` shows only typography deltas in `assets/css/custom.css`

Pull request URL:
- https://github.com/kmhuynh/hugoblox-academic-cv/pull/new/codex/homepage-restore

## 1) Context

User feedback indicates the current hub-card homepage (`Start here` with 4 buttons) is unacceptable and materially worse than the previous Hugo feel.

Approved direction:
1. Restore pre-redesign homepage structure from commit `cd08864` as closely as possible.
2. Restore old navigation labels and links exactly.
3. Allow only one enhancement in this pass: typography scale polish.

## 2) Goals and Non-Goals

Goals:
1. Recover the visual/structural experience of `cd08864`.
2. Remove the modern hub-card block and related visual language.
3. Improve readability via subtle typography hierarchy tuning only.

Non-goals:
1. Any new IA or page-routing redesign.
2. Multi-dimensional visual overhaul (buttons/cards/spacing system changes).
3. Reworking unrelated pages unless required for parity.

## 3) File-Level Scope

Primary files to restore:
1. `content/_index.md`
2. `config/_default/menus.yaml`
3. `assets/css/custom.css`

Other files:
- Keep as-is unless directly needed for restore correctness.
- Generated files (`public/`, `resources/`) are out of design scope.

## 4) Restored Architecture

Homepage architecture (target):
1. Return to the old section progression and tone from `cd08864`.
2. Remove the `Start here` card block entirely.
3. Preserve original homepage block semantics (bio + narrative + legacy sections).

Navigation architecture (target):
1. Restore old nav labels/anchors exactly (including `Papers`, `Talks`, `News` patterns).
2. Remove current spoke-first nav emphasis from top-level menu for this pass.

## 5) Visual and Component Rules

Strict restoration rules:
1. No hub-card component visuals.
2. No new CTA card/button system.
3. No additional modern blocks.

Single approved enhancement:
1. Typography scale polish only:
   - Slight heading hierarchy refinement.
   - Slight body line-height/readability tuning.
   - No layout, spacing-system, or component-style changes.

## 6) Data Flow and Ownership

1. Homepage content/control remains in `content/_index.md`.
2. Navigation control remains in `config/_default/menus.yaml`.
3. Theme override behavior remains in `assets/css/custom.css`.
4. Author/publication/post data sources remain unchanged.

## 7) Risk Handling

Risk 1: Carry-over of hub-card design language.  
Mitigation: snapshot restore from `cd08864` for scoped files, then minimal typography edits only.

Risk 2: Typography tweak creeping into broader redesign.  
Mitigation: constrain edits to explicit font-size/line-height rules and reject extra style changes.

Risk 3: Hidden regressions due mixed history.  
Mitigation: file-targeted diff checks against baseline and explicit text/anchor checks.

## 8) Verification Gates

1. Diff gate:
   - `content/_index.md`, `config/_default/menus.yaml`, `assets/css/custom.css` align with `cd08864` baseline except documented typography adjustments.

2. Presence/absence gate:
   - Required restored labels/anchors exist (`Papers`, `Talks`, `News`, etc.).
   - Hub-card markers removed (`Start here`, `.hub-card`, `.hub-quick-links`).

3. Build/check gate:
   - Use available source-level verification flow in current environment.

4. Manual UX gate:
   - Homepage first impression matches old Hugo theme feel.

## 9) Acceptance Criteria

Design is complete when:
1. Restore-first scope is respected.
2. Old nav/homepage behavior is back.
3. Only typography scale is changed beyond restoration.
4. Verification gates are defined and pass during implementation.
