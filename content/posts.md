---
title: 'Posts'
date: 2024-01-01
type: landing

design:
  spacing: '5rem'

sections:
  - block: markdown
    content:
      title: '📝 Blog Posts & Research Insights'
      text: |
        Explore my thoughts on research, methodology, and the intersection of neuroscience and data science. This includes both technical blog posts and insights from my published work.
    
  - block: collection
    content:
      title: 'Recent Blog Posts'
      filters:
        folders:
          - post
      count: 10
    design:
      view: date-title-summary
      
  - block: collection
    content:
      title: 'Featured Publications'
      text: 'Key papers with detailed discussions and insights'
      filters:
        folders:
          - publication
        featured_only: true
    design:
      view: article-grid
      columns: 2
      
  - block: collection
    content:
      title: 'All Publications'
      filters:
        folders:
          - publication
    design:
      view: citation
---