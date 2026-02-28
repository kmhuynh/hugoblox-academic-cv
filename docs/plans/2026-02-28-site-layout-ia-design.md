# Site Layout and IA Design

Date: 2026-02-28  
Status: Approved (design)  
Scope: Full-site information architecture and layout refresh, preserving the existing hero concept

## 1) Context

This site is built on Hugo Blox Academic CV with content-driven pages and light custom templates/CSS.

Current structure and customization points:
- Homepage composition: `content/_index.md`
- Profile, CV data, awards, interests: `content/authors/admin/_index.md`
- Navigation: `config/_default/menus.yaml`
- Site behavior/appearance: `config/_default/params.yaml`, `config/_default/hugo.yaml`
- Global custom styling: `assets/css/custom.css`
- Tools page: `content/tools/index.md`
- Posts landing: `content/posts.md`

## 2) Product Direction

Primary audience strategy:
- Mixed audience, collaborators first
- Emphasis on PIs, deans/chairs, and hiring committees

Primary user outcomes for the homepage:
- Understand research focus quickly
- Find a clear collaboration/contact path quickly

Design intent:
- Modern professional
- Unique but restrained
- Clean and easy to navigate
- Keep hero concept recognizable and editable

## 3) Goals and Non-Goals

Goals:
1. Improve first-visit clarity in under 10 seconds.
2. Reduce navigation friction for collaborator/hiring journeys.
3. Keep a strong but non-flashy professional identity.
4. Make content editing straightforward for future updates.

Non-goals:
1. Flashy, CV-heavy homepage treatment.
2. Major data model or framework migration.
3. Dense all-in-one homepage that duplicates full spoke pages.

## 4) Chosen Approach

Selected approach: **Minimal hub-and-spoke**.

Rationale:
- Maximizes clarity and scannability.
- Keeps homepage concise while preserving credibility.
- Enables page-level depth without cluttering the entry experience.

## 5) Architecture and Page Hierarchy

### 5.1 Homepage (Hub)

Keep hero concept but tighten to:
1. Research focus statement.
2. One-line credibility signal.
3. Primary collaboration CTA.

Add compact "Start here" quick links:
- Flagship Papers
- Research Themes
- Tools and Code
- Work with Me

Homepage should prioritize orientation and routing, not full CV detail.

### 5.2 Top-Level Spokes

Primary navigation:
- Research
- Publications
- CV
- Tools
- Contact

Intent per page:
- Research: problem areas, methods, selected outcomes.
- Publications: full discoverability and filtering.
- CV: factual record (experience, awards, downloadable PDF), lower visual emphasis.
- Tools: practical resources with status and links.
- Contact: collaboration/mentoring pathways.

### 5.3 Core User Paths

Primary collaborator/hiring path:
- Home -> Research/Publications -> Contact

Secondary resource path:
- Home -> Tools -> Contact

Trust/credential path:
- Home -> CV/Publications

## 6) Layout and Visual System

### 6.1 Layout Principles

1. Consistent max-width and spacing scale.
2. Clear section rhythm: concise intro bands followed by deeper sections.
3. Grid-aligned cards/lists for calm scanning.

### 6.2 Typography Direction

1. Serif/sans pairing:
   - Serif for headings (authority).
   - Sans for body and UI (clarity).
2. Strong heading hierarchy and compact metadata.
3. Minimal decorative emphasis.

### 6.3 Color and Brand Tone

1. Neutral base with restrained signature accent (compatible with current emerald direction).
2. Replace emoji-heavy UI cues in core navigation/components with consistent iconography/badges.
3. Avoid loud visual effects; use subtle accents only where helpful.

### 6.4 Component Language

Reusable layout components:
- Hero
- Quick Links
- Featured Work
- Compact Timeline
- Resource Cards

UI consistency rules:
- One primary button style.
- One secondary outline style.
- Light card borders, soft radius, minimal shadow.

### 6.5 Navigation UX

1. Keep nav short and stable.
2. Maintain persistent collaboration contact action in header.
3. Use short section labels and concise summaries for fast PI/hiring scanning.

## 7) Content Model and Maintainability

1. Homepage should be composition-focused (summary + routing), not long narrative.
2. Maintain single-source ownership:
   - Profile/CV-related data in `content/authors/admin/_index.md`
   - Publications in `content/publication/*/index.md`
   - Tool/resource content in `content/tools/index.md`
3. Define one clear next action per page (reduce CTA competition).
4. Keep CSS scoped by section (`hero`, `nav`, `cards`, `cv`).
5. Prefer explicit classes over fragile selector hacks.
6. Update `CONTENT_MAP.md` to match new IA and editing flow.

## 8) Risk Handling and Resilience

Content and template resilience:
1. Graceful empty states for missing featured items.
2. Sensible defaults for optional metadata (subtitle/image/summary).
3. Avoid hard dependencies on one-off fields.

UX resilience:
1. Mobile-first checks for nav, hero wrapping, and card stacking.
2. Control line lengths and title wrapping for long publication names.
3. Maintain keyboard accessibility and clear focus states.

Performance/technical guardrails:
1. Optimize hero assets and avoid heavy non-critical visuals.
2. Reduce global CSS overrides in favor of scoped rules.
3. Continue editing source files only, not generated `public/` output.

## 9) Verification Requirements Before Declaring Done

1. Hugo build succeeds from source.
2. Visual and navigation check on:
   - Home
   - Research/Publications
   - CV
   - Tools
   - Contact
3. Collaborator/hiring journey validated in <= 3 clicks.
4. Accessibility sanity pass:
   - heading order
   - link labels
   - contrast
   - keyboard navigation
5. Desktop and mobile spot checks.

## 10) Acceptance Criteria for This Design Phase

This design is considered complete when:
1. IA and layout direction are approved.
2. Visual language is defined as modern professional and restrained.
3. Homepage role is clearly hub-oriented.
4. Clear verification gates are documented.

All above criteria were approved during design review in this session.
