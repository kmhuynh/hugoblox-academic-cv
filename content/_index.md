---
# HOMEPAGE CONFIGURATION
# Leave the homepage title empty to use the site title
title: ""
date: 2022-10-24
type: landing

design:
  # Default section spacing - adjust this to change space between sections
  spacing: "6rem"

# SECTIONS: Add/remove/reorder sections by modifying this list
# Each section is a "block" with different types available
sections:
  # BIOGRAPHY SECTION: Shows your photo, name, role, and bio
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin  # This references content/authors/admin/_index.md
      text: ""
       # Show a call-to-action button under your biography? (optional)
      # CV button moved to "About" page - uncomment below to restore here
      # button:
      #   text: Download CV
      #   url: uploads/resume.pdf
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
  # RESEARCH DESCRIPTION SECTION: Markdown text block
  - block: markdown
    content:
      title: '📚 My Research'  # Change this title as needed
      subtitle: ''  # Optional subtitle
      text: |-
       I'm a postdoc in <span class="no-break">Dr. Pew-Thian Yap's</span> lab at UNC-Chapel Hill, where I build tools to better understand how the brain changes over time — through development, aging, and disease. I'm especially focused on creating normative brain charts, like the height and weight charts used in pediatric care, to help spot when something's not quite right. At the heart of it, I'm driven by a simple goal - to turn brain scans into practical tools that make healthcare better — so no child is left behind just because we didn't see the signs soon enough.

       I believe the solutions we're looking for are often already out there — scattered among us. You might hold the key to a problem I'm working on, and I might have insight into yours. Let's [connect](mailto:kmhuynh@med.unc.edu) and find out together. 😃
    design:
      columns: '1'  # Number of columns (1 or 2)
  # RESEARCH IMPACT METRICS SECTION (HIDDEN - uncomment to enable)
  # - block: markdown
  #   content:
  #     title: '📊 Research Impact'
  #     text: |-
  #       <div class="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
  #         <div class="bg-gray-50 dark:bg-gray-800 p-4 rounded-lg">
  #           <div class="text-2xl font-bold text-primary-600 dark:text-primary-400">185+</div>
  #           <div class="text-sm text-gray-600 dark:text-gray-400">Citations</div>
  #           <div class="text-xs text-gray-500">Google Scholar</div>
  #         </div>
  #         <div class="bg-gray-50 dark:bg-gray-800 p-4 rounded-lg">
  #           <div class="text-2xl font-bold text-primary-600 dark:text-primary-400">8</div>
  #           <div class="text-sm text-gray-600 dark:text-gray-400">h-index</div>
  #           <div class="text-xs text-gray-500">Research Impact</div>
  #         </div>
  #         <div class="bg-gray-50 dark:bg-gray-800 p-4 rounded-lg">
  #           <div class="text-2xl font-bold text-primary-600 dark:text-primary-400">1.2K+</div>
  #           <div class="text-sm text-gray-600 dark:text-gray-400">Code Downloads</div>
  #           <div class="text-xs text-gray-500">OSF & GitHub</div>
  #         </div>
  #         <div class="bg-gray-50 dark:bg-gray-800 p-4 rounded-lg">
  #           <div class="text-2xl font-bold text-primary-600 dark:text-primary-400">15+</div>
  #           <div class="text-sm text-gray-600 dark:text-gray-400">Publications</div>
  #           <div class="text-xs text-gray-500">Peer-reviewed</div>
  #         </div>
  #       </div>
  #   design:
  #     columns: '1'
  - block: resume-skills
    content:
      title: "🎒 My off hours"
      username: admin
    design:
      show_skill_percentage: false
  # RESEARCH HIGHLIGHTS CAROUSEL: Featured research with visual appeal
  - block: collection
    id: highlights  # This creates anchor link /#highlights
    content:
      title: 🔬 Research Highlights  # Change section title here
      subtitle: Breakthrough research in diffusion MRI and brain imaging
      filters:
        folders:
          - publication  # Looks in content/publication/ folder
        featured_only: true  # Only shows papers with featured: true
    design:
      view: showcase  # Carousel-style view
      columns: 1
      flip_alt_rows: false
  - block: collection
    content:
      title: Recent Publications
      text: ""
      filters:
        folders:
          - publication
        exclude_featured: false
    design:
      view: citation
  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - event
    design:
      view: article-grid
      columns: 1
  - block: collection
    id: news
    content:
      title: Recent News
      subtitle: ''
      text: ''
      # Page type to display. E.g. post, talk, publication...
      page_type: post
      # Choose how many pages you would like to display (0 = all pages)
      count: 5
      # Filter on criteria
      filters:
        author: ""
        category: ""
        tag: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: date-title-summary
      # Reduce spacing
      spacing:
        padding: [0, 0, 0, 0]
---
