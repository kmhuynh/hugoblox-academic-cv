---
# PUBLICATION FRONTMATTER CONFIGURATION
# Edit these fields for each publication

title: "Optimal shrinkage denoising breaks the noise floor in high-resolution diffusion MRI"
authors:  # List authors, use "admin" for yourself, others by name
- admin  # This references your profile in content/authors/admin/
- Wei-Tang Chang
- Ye Wu
- Pew-Thian Yap
date: '2024-03-08'  # Publication date (YYYY-MM-DD)
doi: '10.1016/j.patter.2024.100954'  # DOI identifier

# Schedule page publish date (NOT publication's date).
publishDate: "2024-03-08T00:00:00Z"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: '*Patterns*'
publication_short: "Patterns"

abstract: The spatial resolution attainable in diffusion magnetic resonance (MR) imaging is inherently limited by noise. The weaker signal associated with a smaller voxel size, especially at a high level of diffusion sensitization, is often buried under the noise floor owing to the non-Gaussian nature of the MR magnitude signal. Here, we show how the noise floor can be suppressed remarkably via optimal shrinkage of singular values associated with noise in complex-valued k-space data from multiple receiver channels. We explore and compare different low-rank signal matrix recovery strategies to utilize the inherently redundant information from multiple channels. In combination with background phase removal, the optimal strategy reduces the noise floor by 11 times. Our framework enables imaging with substantially improved resolution for precise characterization of tissue microstructure and white matter pathways without relying on expensive hardware upgrades and time-consuming acquisition repetitions, outperforming other related denoising methods.

# Summary. An optional shortened abstract.
summary: A breakthrough approach to dramatically reduce noise in high-resolution diffusion MRI through optimal shrinkage denoising, enabling unprecedented detail in brain imaging without expensive hardware upgrades.

tags:
- Diffusion MRI
- Denoising
- Optimal Shrinkage
- Medical Imaging
- Brain Imaging
- Signal Processing
featured: true  # Set to true to show in "Featured Publications" section

# LINKS CONFIGURATION: Add links to paper resources
# Custom links (optional).
links:
- name: Paper  # Custom link name
  url: 'https://www.cell.com/patterns/fulltext/S2666-3899(24)00053-9'
# Standard URL fields - Hugo Blox will create buttons automatically
url_pdf: 'https://www.cell.com/cms/10.1016/j.patter.2024.100954/attachment/1e23d03e-3702-430e-9413-26f8e20e1417/mmc2.pdf'
url_code: 'https://osf.io/f384h/'  # GitHub, OSF, etc.
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Optimal shrinkage denoising dramatically improves high-resolution diffusion MRI quality'
  focal_point: "Smart"
  preview_only: false
  # High quality settings for this publication
  quality: 100
  width: 1778
  height: 1772

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

{{% callout note %}}
**🚀 Key Breakthrough**: We achieved an **11x reduction** in noise floor - enabling unprecedented brain imaging detail without expensive hardware upgrades.
{{% /callout %}}

## 🧠 The Big Picture: Breaking Through the Noise Barrier

Imagine trying to capture the intricate highway system of the brain with unprecedented detail, but noise keeps blurring the fine structures you need to see. This is the fundamental challenge in high-resolution diffusion MRI - the very noise that limits our ability to peer into the brain's white matter architecture at the microscopic level.

Our research tackles this head-on with a breakthrough approach: **optimal shrinkage denoising**. Instead of accepting noise as an inevitable limitation, we developed a method that reduces the noise floor by **11 times** - a dramatic improvement that opens new possibilities for brain imaging.

---

## 💡 The Innovation

The key insight lies in leveraging the redundant information inherent in multi-channel MRI data. Modern MRI scanners use multiple receiver coils, creating natural redundancy that we can exploit. By applying optimal shrinkage to singular values in the complex-valued k-space data, we can distinguish true signal from noise with remarkable precision.

> 🎵 **Think of it like this**: Having multiple microphones recording the same concert - while each individual recording might be noisy, combining them intelligently can reveal the true music underneath.

{{% callout warning %}}
**Traditional Approach**: Accept noise as an inevitable limitation  
**Our Approach**: Actively break through the noise barrier using optimal shrinkage
{{% /callout %}}

---

## 🎯 Why This Matters

This breakthrough has profound implications for the entire neuroimaging field:

| Impact Area | Benefit |
|-------------|---------|
| 🏥 **Clinical Translation** | Brings advanced diffusion MRI closer to routine clinical use |
| 🔬 **Research Acceleration** | Reduces need for time-consuming repeated scans |
| 💰 **Cost Effectiveness** | Achieves superior quality without expensive hardware upgrades |
| 🔍 **New Discoveries** | Reveals microstructural details previously hidden by noise |

---

## 🔬 Technical Abstract

<details>
<summary><strong>Click to expand technical details</strong></summary>

The spatial resolution attainable in diffusion magnetic resonance (MR) imaging is inherently limited by noise. The weaker signal associated with a smaller voxel size, especially at a high level of diffusion sensitization, is often buried under the noise floor owing to the non-Gaussian nature of the MR magnitude signal. Here, we show how the noise floor can be suppressed remarkably via optimal shrinkage of singular values associated with noise in complex-valued k-space data from multiple receiver channels. We explore and compare different low-rank signal matrix recovery strategies to utilize the inherently redundant information from multiple channels. In combination with background phase removal, the optimal strategy reduces the noise floor by 11 times. Our framework enables imaging with substantially improved resolution for precise characterization of tissue microstructure and white matter pathways without relying on expensive hardware upgrades and time-consuming acquisition repetitions, outperforming other related denoising methods.

</details>

---

## 📊 Impact and Applications

Our framework enables precise characterization of:

- 🛤️ **White matter pathways** with unprecedented detail
- 🔬 **Tissue microstructure** previously obscured by noise  
- 📈 **Developmental changes** in brain connectivity
- 🏥 **Pathological alterations** in neurological conditions

{{% callout info %}}
**🌍 Open Science Commitment**: All code and data are freely available to accelerate reproducible research in the neuroimaging community.
{{% /callout %}}

---

## 🏆 The Bottom Line

This work represents a **paradigm shift** in medical imaging - from accepting noise as a limitation to actively breaking through it. We're democratizing high-resolution brain imaging capabilities and making advanced diffusion MRI accessible to researchers worldwide.
