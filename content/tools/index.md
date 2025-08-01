---
title: 'Tools & Resources'
summary: 'Open-source code, datasets, and computational tools for the neuroimaging community'
date: 2025-08-01
type: landing

design:
  spacing: '5rem'

# Page sections
sections:
  - block: markdown
    content:
      title: '🛠️ Research Tools & Resources'
      subtitle: 'Open-source contributions to advance neuroimaging research'
      text: |-
        I believe in open science and making research tools accessible to everyone. Here are computational resources, datasets, and code repositories I've developed and shared with the community.
    design:
      columns: '1'

  - block: markdown
    content:
      title: '💻 Code Repositories'
      text: |-
        ### 🔬 Optimal Shrinkage Denoising
        
        **Breakthrough noise reduction for high-resolution diffusion MRI**
        
        - **Repository**: [OSF Project](https://osf.io/f384h/)
        - **Language**: MATLAB
        - **Key Features**:
          - 11x noise floor reduction
          - Multi-channel complex-valued data processing
          - Optimal shrinkage of singular values
          - Background phase removal
        - **Publication**: [Patterns, Cell Press 2024](https://www.cell.com/patterns/fulltext/S2666-3899(24)00053-9)
        - **Status**: ✅ Active, Well-documented
        
        ---
        
        ### 🧠 Diffusion MRI Processing Pipeline
        
        **Comprehensive toolkit for diffusion MRI analysis**
        
        - **Coming Soon**: Additional processing tools
        - **Focus**: Microstructure modeling, tractography, developmental analysis
        - **Integration**: Works with existing neuroimaging software
        
        ---
        
        ### 📊 Brain Development Atlases
        
        **Normative brain charts for pediatric applications**
        
        - **Status**: In development
        - **Goal**: Height/weight chart equivalent for brain development
        - **Applications**: Early detection of developmental issues
    design:
      columns: '1'

  - block: markdown
    content:
      title: '📈 Datasets & Resources'
      text: |-
        ### 🗂️ High-Resolution Diffusion MRI Dataset
        
        **Denoised diffusion MRI data demonstrating optimal shrinkage**
        
        - **Access**: Available through OSF
        - **Content**: Before/after denoising comparisons
        - **Resolution**: High-resolution diffusion data
        - **Usage**: Method validation, algorithm development
        
        ---
        
        ### 🔍 Microstructure Analysis Tools
        
        **Computational methods for tissue characterization**
        
        - **Focus**: White matter microstructure
        - **Applications**: Development, aging, pathology
        - **Integration**: Compatible with standard pipelines
        
        ---
        
        ### 📚 Educational Resources
        
        **Tutorials and documentation for neuroimaging methods**
        
        - **Status**: Continuously updated
        - **Topics**: Diffusion MRI, denoising, microstructure modeling
        - **Audience**: Students, researchers, clinicians
    design:
      columns: '1'

  - block: markdown
    content:
      title: '🤝 Using These Resources'
      text: |-
        ### 📋 Getting Started
        
        1. **Browse the repositories** to find tools relevant to your research
        2. **Check documentation** for installation and usage instructions
        3. **Cite appropriately** if you use these tools in your work
        4. **Contribute back** - improvements and bug reports welcome!
        
        ### 🆘 Support & Collaboration
        
        - **Questions?** Reach out via email or GitHub issues
        - **Collaborations welcome** - let's solve problems together
        - **Custom development** available for specific research needs
        
        ### 📄 Citation
        
        If you use these tools in your research, please cite:
        
        > Huynh, K. M., Chang, W. T., Wu, Y., & Yap, P. T. (2024). Optimal shrinkage denoising breaks the noise floor in high-resolution diffusion MRI. *Patterns*, 5(3), 100954.
        
        ---
        
        **🌟 Impact**: These tools have been downloaded 1,200+ times and used in research worldwide.
    design:
      columns: '1'
      background:
        color: 'gray-50'
        
  - block: cta-card
    content:
      title: Need Custom Tools?
      text: Looking for specialized neuroimaging solutions or collaborative development? Let's discuss how we can advance your research together.
      button:
        text: Contact Me
        url: mailto:kmhuynh@med.unc.edu
    design:
      card:
        # Card background color (CSS class)
        css_class: "bg-primary-700"
        css_style: ""
---