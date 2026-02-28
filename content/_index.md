---
title: ""
date: 2022-10-24
type: landing

design:
  spacing: "6rem"

sections:
  - block: resume-biography-3
    content:
      username: admin
      text: ""
    design:
      css_class: dark
      background:
        color: black
        image:
          # Add your image background to `assets/media/`.
          filename: brain_right.png
          filters:
            brightness: 1.0
          size: cover
          position: center
          parallax: false

  - block: markdown
    content:
      title: "Research focus"
      subtitle: ""
      text: |-
        I develop computational methods for neurodevelopmental MRI, especially diffusion MRI modeling, longitudinal brain charting, and structure-function analysis.

        I collaborate with method developers, clinicians, and translational teams to turn technically strong imaging research into useful decision-support tools.
    design:
      columns: "1"

  - block: markdown
    content:
      title: "Start here"
      subtitle: ""
      text: |-
        <div class="hub-quick-links">
          <a class="hub-card" href="/publication/">Flagship Papers</a>
          <a class="hub-card" href="/research/">Research Themes</a>
          <a class="hub-card" href="/tools/">Tools and Code</a>
          <a class="hub-card" href="/contact/">Work with Me</a>
        </div>
    design:
      columns: "1"

  - block: collection
    id: highlights
    content:
      title: "Research Highlights"
      subtitle: "Flagship work in diffusion MRI and brain development"
      filters:
        folders: [publication]
        featured_only: true
    design:
      view: article-grid
      columns: 1

  - block: collection
    content:
      title: Recent Publications
      text: ""
      filters:
        folders: [publication]
        exclude_featured: false
    design:
      view: citation
---
