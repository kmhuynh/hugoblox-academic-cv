# 🗺️ Content Location Map

**Quick reference: What you see → Where to edit it**

---

## 🏠 HOMEPAGE SECTIONS

| **What You See** | **File to Edit** | **Specific Location** |
|------------------|------------------|----------------------|
| Your photo & name | `content/authors/admin/_index.md` | Lines 3-10 (title, role) |
| Research description paragraph | `content/_index.md` | Line ~44 (text block) |
| Skills/Hobbies section | `content/authors/admin/_index.md` | Lines ~200+ (skills section) |
| Featured Publications grid | Individual publication files | Set `featured: true` |
| Recent Publications list | Automatic from all publications | N/A |
| Recent News items | `content/post/` folder | Blog posts show here |

---

## 🧭 NAVIGATION MENU

| **Menu Item** | **File to Edit** | **What It Controls** |
|---------------|------------------|---------------------|
| Home, Papers, Talks, News | `config/_default/menus.yaml` | Lines 7-22 |
| CV, Posts | `config/_default/menus.yaml` | Lines 23-30 |
| Add new menu item | `config/_default/menus.yaml` | Add new entry with name, url, weight |

---

## 📄 CV PAGE

| **What You See** | **File to Edit** | **Specific Location** |
|------------------|------------------|----------------------|
| Download CV button | `content/experience.md` | Lines 17-19 |
| CV file itself | `static/uploads/resume.pdf` | Replace entire file |
| Education section | `content/authors/admin/_index.md` | Lines 54-84 |
| Work experience | `content/authors/admin/_index.md` | Lines 85-120 |
| Awards section | `content/authors/admin/_index.md` | Lines ~150+ |
| Publications list | Automatic from publication folder | N/A |

---

## 📚 PUBLICATIONS

| **What You See** | **File to Edit** | **What Controls It** |
|------------------|------------------|---------------------|
| Individual paper title | `content/publication/[paper-folder]/index.md` | Line 5 (title field) |
| Authors list | `content/publication/[paper-folder]/index.md` | Lines 6-10 (authors field) |
| Abstract text | `content/publication/[paper-folder]/index.md` | Line ~23 (abstract field) |
| PDF/Code/Data links | `content/publication/[paper-folder]/index.md` | Lines 45-51 (url_* fields) |
| Paper image | `content/publication/[paper-folder]/featured.jpg` | Replace image file |
| Featured on homepage | `content/publication/[paper-folder]/index.md` | Line 38 (`featured: true`) |

---

## ✍️ BLOG POSTS

| **What You See** | **File to Edit** | **Specific Location** |
|------------------|------------------|----------------------|
| Post title | `content/post/[post-folder]/index.md` | Line 2 (title field) |
| Post content | `content/post/[post-folder]/index.md` | After `---` markers |
| Post date | `content/post/[post-folder]/index.md` | Line 4 (date field) |
| Post tags | `content/post/[post-folder]/index.md` | Lines ~15+ (tags field) |
| Post image | `content/post/[post-folder]/featured.jpg` | Replace image file |

---

## 👤 PERSONAL INFORMATION

| **What You See** | **File to Edit** | **Specific Location** |
|------------------|------------------|----------------------|
| Your name everywhere | `content/authors/admin/_index.md` | Line 3 (title field) |
| Job title/role | `content/authors/admin/_index.md` | Line 23 (role field) |
| Email, LinkedIn, etc. | `content/authors/admin/_index.md` | Lines 32-47 (profiles section) |
| Bio paragraph | `content/authors/admin/_index.md` | Line ~249 (bottom of file) |
| Your photo | `content/authors/admin/avatar.jpg` | Replace image file |
| Research interests | `content/authors/admin/_index.md` | Lines 49-53 |

---

## 🎨 APPEARANCE & STYLING

| **What You See** | **File to Edit** | **What It Controls** |
|------------------|------------------|---------------------|
| Site colors/theme | `config/_default/params.yaml` | Line 9 (`color: emerald`) |
| Light/dark mode | `config/_default/params.yaml` | Line 8 (`mode: system`) |
| Site title in tab | `config/_default/params.yaml` | Line 38 (`text: "Khoi Huynh"`) |
| Brain favicon | `assets/media/icon.png` | Replace 512x512 PNG file |
| Background image | `assets/media/brain_right.png` | Replace image file |
| Text justification | `assets/css/custom.css` | Already configured |

---

## 🔧 ADVANCED EDITING

| **What You Want** | **File to Edit** | **How To Do It** |
|-------------------|------------------|------------------|
| Add new page | Create `content/new-page.md` | Copy structure from existing page |
| Change homepage sections | `content/_index.md` | Modify `sections:` list |
| Add social media link | `content/authors/admin/_index.md` | Add to `profiles:` section |
| Change publication display | `content/_index.md` | Modify collection blocks |
| Add custom CSS | `assets/css/custom.css` | Add your CSS rules |

---

## 🎯 QUICK SEARCH TIPS

**Method 1: Text Search**
1. Copy exact text you want to change
2. `Ctrl+Shift+F` (or `Cmd+Shift+F` on Mac) in VS Code
3. Search across all files
4. Look for matches in `.md` files

**Method 2: Browser Inspection**
1. Right-click on text → "Inspect Element"
2. Look for HTML comments with "EDIT:" instructions
3. Follow the file path in the comment

**Method 3: Common Patterns**
- Homepage content → `content/_index.md`
- Personal info → `content/authors/admin/_index.md`  
- Publications → `content/publication/[folder]/index.md`
- Navigation → `config/_default/menus.yaml`
- Styling → `assets/css/custom.css`

---

## 🚨 IMPORTANT NOTES

**File Formats:**
- `.md` files use `#` for comments
- `.yaml` files use `#` for comments  
- `.html` files use `<!-- -->` for comments

**Don't Edit:**
- Files in `public/` folder (auto-generated)
- Files in `resources/` folder (auto-generated)
- Files in `.git/` folder (version control)

**After Editing:**
```bash
git add .
git commit -m "describe your changes"  
git push
```

---

*💡 Pro tip: Bookmark this file for quick reference when editing your site!*