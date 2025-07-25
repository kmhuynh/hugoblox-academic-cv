---
title: 'AAA'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: markdown
    content:
      title: "📄 My CV"
      text: |
        You can download my full CV here:
      ## Show a call-to-action button under your biography? (optional)
       button:
         text: Download CV
         url: uploads/resume.pdf
  - block: resume-experience
    content:
      username: admin
    design:
      # Hugo date format
      date_format: 'January 2006'
      # Education or Experience section first?
      is_education_first: false
  # - block: resume-skills
  #   content:
  #     title: Skills & Hobbies
  #     username: admin
  #   design:
  #     show_skill_percentage: false
  - block: resume-awards
    content:
      title: Awards
      username: admin
  - block: collection
    content:
      title: Publications
      text: ""
      filters:
        folders:
          - publication
        exclude_featured: false
    design:
      view: citation
  # - block: resume-languages
  #   content:
  #     title: Languages
  #     username: admin
---
