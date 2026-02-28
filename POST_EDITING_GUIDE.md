# Post Editing Guide

This guide shows exactly how to create, edit, and publish posts in this repo.

## 1) Where posts live

- Post folders: `content/post/<post-slug>/`
- Post content file: `content/post/<post-slug>/index.md`
- Optional assets next to the post:
  - `featured.jpg` (thumbnail/cover)
  - data files such as `results.csv`, `line-chart.json`
  - media files such as `ambient-piano.mp3`

Example post paths from this repo:
- `content/post/get-started/index.md`
- `content/post/data-visualization/index.md`
- `content/post/project-management/index.md`

## 2) Minimal post format

Create `content/post/my-new-post/index.md`:

```markdown
---
title: My Post Title
summary: One sentence summary shown in list pages.
date: 2026-02-28
authors:
  - admin
tags:
  - Research
  - Methods
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com)'
---

Write your post here in Markdown.
```

## 3) Front matter fields you will actually use

- `title`: headline for the post page and post cards
- `summary`: short teaser in listing pages
- `date`: publish ordering (newer date shows first)
- `authors`: usually `admin` for your profile
- `tags`: categories/filters shown on the site
- `image.caption`: optional caption text
- `math: true`: only if this post needs LaTeX

Optional draft workflow:

```yaml
draft: true
```

Remove `draft` or set it to `false` when ready to publish.

## 4) Edit an existing post

1. Open `content/post/<post-slug>/index.md`
2. Change front matter (title, summary, tags, date)
3. Edit Markdown body content under the second `---`
4. Save

## 5) Add or change post images

1. Put a new image in the post folder as `featured.jpg`
2. Keep the same filename for easiest replacement
3. Commit both:
   - `content/post/<post-slug>/index.md` (if caption changed)
   - `content/post/<post-slug>/featured.jpg`

## 6) Use rich content already supported here

This repo already uses these patterns:

- Charts:
  - Put `line-chart.json` in the post folder
  - Use shortcode: `{{< chart data="line-chart" >}}`
- Tables from CSV:
  - Put `results.csv` in the post folder
  - Use shortcode: `{{< table path="results.csv" header="true" caption="..." >}}`
- Mermaid diagrams:
  - Use fenced code blocks with `mermaid`
- Audio:
  - Put MP3 in post folder
  - Use shortcode: `{{< audio src="ambient-piano.mp3" >}}`

## 7) Create a new post quickly

1. Create folder: `content/post/my-topic/`
2. Copy one starter file:
   - `cp content/post/get-started/index.md content/post/my-topic/index.md`
3. Edit front matter + content
4. Add `featured.jpg` (optional but recommended)

## 8) Control where posts appear

- Main post listing section file: `content/post/_index.md`
- Custom posts landing page: `content/posts.md`

If you want only posts on the posts landing page, keep that page focused on `folders: [post]`.

## 9) Local check before publishing

```bash
hugo server
```

Open the local URL and check:
1. Post title/summary display
2. Featured image crops correctly
3. Links/shortcodes render without errors

## 10) Publish workflow

```bash
git add content/post/<post-slug>/index.md content/post/<post-slug>/featured.jpg
git commit -m "update post: <post-slug>"
git push
```

If no image changed, only add `index.md`.
