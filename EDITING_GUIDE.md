# 📝 Website Editing Guide

**Quick reference for editing your Hugo Blox academic website**

---

## 🏠 Homepage Content

**File:** `content/_index.md`

### What you can edit:
- **Research description** (line ~44): Your main research pitch
- **Section spacing** (line 10): Change `6rem` to adjust space between sections
- **Add/remove sections**: Modify the `sections:` list

### Common changes:
```yaml
# Change research text
text: |-
  # Replace this entire paragraph with your research description
  
# Add a new section
- block: markdown
  content:
    title: "New Section Title"
    text: "Your content here"
```

---

## 🧭 Navigation Menu

**File:** `config/_default/menus.yaml`

### What you can edit:
- **Menu item names** (lines 8, 12, 16, 20, 24, 28): Change "Home", "Papers", etc.
- **Menu order** (weight values): Lower numbers appear first
- **Links**: Change URLs to point to different pages

### Adding a new menu item:
```yaml
- name: "New Page"
  url: /new-page/
  weight: 35
```

---

## 📄 About/CV Page

**File:** `content/experience.md`

### What you can edit:
- **Page title** (line 2): Change "CV" to whatever you want
- **CV button** (lines 17-19): Modify or remove download button
- **Section order**: Rearrange resume-experience, resume-awards, etc.

### CV file location:
- **File:** `static/uploads/resume.pdf`
- Replace this file to update your CV

---

## 📚 Publications

### Individual Publication:
**Files:** `content/publication/[paper-name]/index.md`

### What you can edit in each paper:
- **Title** (line 5): Paper title
- **Authors** (lines 6-10): Author list (use "admin" for yourself)
- **Date** (line 11): Publication date
- **Abstract** (line 23): Paper abstract
- **Links** (lines 45-51): PDF, code, data links
- **Featured status** (line 38): Set `featured: true` to show on homepage

### Adding a new publication:
1. Create folder: `content/publication/new-paper-2024/`
2. Copy `index.md` from existing paper
3. Add `featured.jpg` image if desired
4. Edit the frontmatter fields

---

## ✍️ Blog Posts

**Files:** `content/post/[post-name]/index.md`

### What you can edit:
- **Title**: Post title
- **Date**: Publication date
- **Tags**: Categories for the post
- **Content**: Everything after the `---` markers

### Adding a new post:
1. Create folder: `content/post/my-new-post/`
2. Copy `index.md` from existing post
3. Add `featured.jpg` image if desired
4. Write your content

---

## 👤 Personal Profile

**File:** `content/authors/admin/_index.md`

### What you can edit:
- **Basic info** (lines 3-10): Name, role, etc.
- **Contact links** (lines 32-47): Email, LinkedIn, etc.
- **Interests** (lines 49-53): Research interests
- **Education** (lines 55+): Degree information
- **Work experience** (lines 85+): Job history
- **Bio** (line 249): About me section

---

## 🎨 Styling & Appearance

### Colors & Theme:
**File:** `config/_default/params.yaml`
- **Line 9**: Change `color: emerald` to other Hugo Blox themes
- **Line 8**: Change `mode: system` to `light` or `dark`

### Custom CSS:
**File:** `assets/css/custom.css`
- **Text justification**: Already configured
- **Name protection**: Use `<span class="no-break">Name</span>`
- Add your own CSS rules here

### Site Logo/Icon:
**File:** `assets/media/icon.png`
- Replace with 512x512 PNG image
- Hugo Blox will automatically generate favicon

---

## 📱 Site Settings

### Site Title & Description:
**File:** `config/_default/params.yaml`
- **Line 38**: Change `text: "Khoi Huynh"` (site title)
- **Line 17**: Change site description for SEO

### Social Media:
**File:** `content/authors/admin/_index.md`
- **Lines 32-47**: Add/remove social media links
- Available icons: `brands/linkedin`, `brands/twitter`, `academicons/google-scholar`, etc.

---

## 🔧 Advanced Customization

### Adding New Pages:
1. Create `content/new-page.md`
2. Add frontmatter with `title` and `type: landing`
3. Add to navigation menu in `menus.yaml`

### Changing Homepage Sections:
Edit `content/_index.md` sections list:
- `resume-biography-3`: Your photo and bio
- `markdown`: Custom text sections
- `collection`: Auto-generated lists (papers, posts)
- `resume-skills`: Skills/hobbies

### Publication Display:
- **Homepage featured**: Set `featured: true` in paper's `index.md`
- **All publications**: Automatically shown on CV page
- **Paper links**: Use `url_pdf`, `url_code`, `url_data` fields

---

## 📁 File Structure Quick Reference

```
content/
├── _index.md                 # Homepage
├── experience.md            # CV page
├── posts.md                # Posts page
├── authors/admin/_index.md  # Your profile
├── publication/            # All papers
│   └── paper-name/
│       ├── index.md        # Paper details
│       └── featured.jpg    # Paper image
└── post/                  # Blog posts
    └── post-name/
        ├── index.md       # Post content
        └── featured.jpg   # Post image

config/_default/
├── menus.yaml             # Navigation
├── params.yaml           # Site settings
└── hugo.yaml            # Hugo config

assets/
├── css/custom.css        # Custom styling
└── media/
    ├── icon.png         # Site favicon
    └── brain_right.png  # Background image

static/
└── uploads/
    └── resume.pdf       # Your CV file
```

---

## 🚀 Publishing Changes

After editing any file:
```bash
git add .
git commit -m "describe your changes"
git push
```

Your site will automatically rebuild and deploy!

---

## 💡 Quick Tips

1. **Always backup** before major changes
2. **Test locally** with `hugo server` if possible
3. **Use `featured: true`** to highlight important papers
4. **Keep images** under 1MB for faster loading
5. **Use descriptive filenames** for papers and posts
6. **Check mobile view** - many visitors use phones
7. **Update CV file** regularly in `static/uploads/`

---

## 🆘 Troubleshooting

**Site not updating?**
- Check for syntax errors in YAML frontmatter
- Ensure proper indentation (spaces, not tabs)
- Clear browser cache

**Images not showing?**
- Check file paths are correct
- Ensure images are in the right folder
- Try different image formats (JPG, PNG)

**Navigation broken?**
- Check `menus.yaml` syntax
- Ensure weight values are numbers
- Verify URL paths are correct

---

*This guide covers the most common editing tasks. For advanced features, check the [Hugo Blox documentation](https://docs.hugoblox.com/).*