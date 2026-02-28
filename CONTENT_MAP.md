# Content Location Map

Quick reference for editing the current hub-and-spoke site structure.

## Homepage Hub

| What You See | File to Edit | Notes |
|---|---|---|
| Hero section (photo, role, intro card) | `content/_index.md` | `resume-biography-3` block is preserved |
| Research focus summary | `content/_index.md` | Markdown block titled `Research focus` |
| Start here quick links | `content/_index.md` | Markdown block titled `Start here` |
| Research highlights | `content/_index.md` | Collection block with `id: highlights` |
| Recent publications list | `content/_index.md` | Citation collection block |

## Navigation

| Menu Item | File to Edit | URL |
|---|---|---|
| Home | `config/_default/menus.yaml` | `/` |
| Research | `config/_default/menus.yaml` | `/research/` |
| Publications | `config/_default/menus.yaml` | `/publication/` |
| Tools | `config/_default/menus.yaml` | `/tools/` |
| CV | `config/_default/menus.yaml` | `/experience/` |
| Contact | `config/_default/menus.yaml` | `/contact/` |

## Spoke Pages

| Page | File to Edit | What It Controls |
|---|---|---|
| Research page | `content/research.md` | Research narrative and flagship publication section |
| Publications | `content/publication/*/index.md` | Individual publication metadata/content |
| Tools page | `content/tools/index.md` | Repository summaries, resource status, collaboration links |
| Posts landing | `content/posts.md` | Post-focused listing layout |
| Contact page | `content/contact.md` | Collaboration copy and contact channels |
| CV page | `content/experience.md` | Download button and CV/resume sections |

## Profile and CV Data

| What You See | File to Edit | Notes |
|---|---|---|
| Name, role, social links | `content/authors/admin/_index.md` | Top metadata fields |
| Education, work, awards | `content/authors/admin/_index.md` | `education`, `work`, `awards` arrays |
| About paragraph | `content/authors/admin/_index.md` | Bottom `## About Me` section |
| Avatar image | `content/authors/admin/avatar.jpg` | Replace image file directly |
| CV PDF file | `static/uploads/resume.pdf` | Replace file directly |

## Styling and Visual System

| What You See | File to Edit | Notes |
|---|---|---|
| Hub quick-link cards | `assets/css/custom.css` | `.hub-quick-links`, `.hub-card` |
| Shared accent and border tokens | `assets/css/custom.css` | CSS variables under `:root` |
| No-break name styling | `assets/css/custom.css` | `.no-break` |

## Editing Workflow

1. Edit source files under `content/`, `config/`, or `assets/`.
2. Run source smoke checks:

```bash
bash scripts/verify_site_layout.sh
```

3. Optional targeted checks:

```bash
rg -n ":contains\\(" assets/css/custom.css
rg -n "Research focus|Start here|Work with Me" content/_index.md
```

4. Commit only intended source files.

## Important Notes

- Do not manually edit generated files in `public/` or `resources/`.
- Keep navigation labels concise and stable for first-time visitors.
- For new sections, add clear labels in content and add/adjust expectations in `tests/site_expectations.txt`.
