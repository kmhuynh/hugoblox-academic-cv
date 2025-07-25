---
title: "Optimal shrinkage denoising breaks the noise floor in high-resolution diffusion MRI"
authors:
- admin
- Wei-Tang Chang
- Ye Wu
- Pew-Thian Yap
date: '2024-01-01'
# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"


# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

publication: '*Patterns*'

abstract: The spatial resolution attainable in diffusion magnetic resonance (MR) imaging is inherently limited by noise. The weaker signal associated with a smaller voxel size, especially at a high level of diffusion sensitization, is often buried under the noise floor owing to the non-Gaussian nature of the MR magnitude signal. Here, we show how the noise floor can be suppressed remarkably via optimal shrinkage of singular values associated with noise in complex-valued k-space data from multiple receiver channels. We explore and compare different low-rank signal matrix recovery strategies to utilize the inherently redundant information from multiple channels. In combination with background phase removal, the optimal strategy reduces the noise floor by 11 times. Our framework enables imaging with substantially improved resolution for precise characterization of tissue microstructure and white matter pathways without relying on expensive hardware upgrades and time-consuming acquisition repetitions, outperforming other related denoising methods.

summary: Diffusion magnetic resonance imaging (MRI) is a pivotal tool in pathology research and for the study of brain development. However, noise often undermines the intricate details expected to be gained from increasing the spatial resolution. Rather than resorting to time-consuming scans and costly hardware upgrades to combat noise, data redundancy in MRI can be leveraged to effectively reduce noise, unveil details, and enhance downstream analyses.

tags:
- diffusion MRI
- noise removal
- optimal shrinkage
featured: true

links:
#- name: Custom Link
#url: 'http://pmc.ncbi.nlm.nih.gov/articles/PMC11026978/'
url_pdf: 'http://www.cell.com/cms/10.1016/j.patter.2024.100954/attachment/1e23d03e-3702-430e-9413-26f8e20e1417/mmc2.pdf'
url_code: 'http://osf.io/f384h/'
#url_dataset: '#'
#url_poster: '#'
#url_project: ''
#url_slides: ''
#url_source: '#'
#url_video: '#'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ''
  focal_point: ""
  preview_only: false

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
#slides: example
---

