---
title: 'CV'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: resume-biography
    content:
      username: admin
      text: ""
      button:
        text: Download CV
        url: /uploads/resume.pdf
    design:
      show_interests: false
      show_education: false
      show_experience: false
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
  - block: markdown
    content:
      title: Awards
      text: |-
        <div class="resume-experience">
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🏅 ISMRM Summa Cum Laude Awards</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">ISMRM • May 2025</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  Two Summa Cum Laude Awards for presentations:<br>
                  • <a href="https://submissions.mirasmart.com/ISMRM2025/Itinerary/ConferenceMatrixEventDetail.aspx?ses=O-42" class="text-primary-600 hover:underline">Precision Cortex Tractography for the Developing Brain</a><br>
                  • <a href="https://submissions.mirasmart.com/ISMRM2025/Itinerary/ConferenceMatrixEventDetail.aspx?ses=O-17" class="text-primary-600 hover:underline">Pan Contrast Learning of MRI Segmentation</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🎓 ISMRM Education Stipend</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">ISMRM • May 2025</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://submissions.mirasmart.com/ISMRM2025/Itinerary/ConferenceMatrixEventDetail.aspx?ses=O-42" class="text-primary-600 hover:underline">Precision Cortex Tractography for the Developing Brain</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🏅 Best Oral Presentation – 2023 UNC Radiology Symposium</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">UNC Department of Radiology • October 2023</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • Microstructural Atlases of the Developing Brain
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🎓 ISMRM Education Stipend</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">ISMRM • May 2021</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://www.ismrm.org/21/program-files/TeaserSlides/TeasersPresentations/3404-Teaser.html" class="text-primary-600 hover:underline">Quantifying Cell Size and Membrane Permeability with Microstructure Fingerprinting</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">✈️ UNC Graduate Student Transportation Grant</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">UNC • June 2020</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://drive.google.com/file/d/1NYW-i2EKqQy4L-N_u6SpNpdv_dRNR1wS/view" class="text-primary-600 hover:underline">Dense Temporal Mapping of Cortical Microstructure in the Early Developing Brain</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">✈️ UNC-BME Travel Award</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">UNC-NCSU BME • March 2020</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://archive.ismrm.org/2020/4419.html" class="text-primary-600 hover:underline">Quantifying Intra-Soma Diffusion Properties via Spherical Mean Spectrum Imaging</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🏅 MICCAI Graduate Student Award</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">MICCAI Society • October 2019</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://pubmed.ncbi.nlm.nih.gov/34447975/" class="text-primary-600 hover:underline">Probing Brain Micro-Architecture by Orientation Distribution Invariant Identification</a><br>
                  • <a href="https://pubmed.ncbi.nlm.nih.gov/34447976/" class="text-primary-600 hover:underline">Characterizing Non-Gaussian Diffusion in Heterogeneously Oriented Tissue Microenvironments</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1 relative">
                <div class="absolute top-5 left-1/2 transform -translate-x-1/2 w-0.5 bg-gray-300 dark:bg-gray-600 h-16"></div>
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">✈️ UNC-BME Travel Award</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">UNC-NCSU BME • March 2019</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://drive.google.com/file/d/1AvKdXybSBLXowh818jsuOYWXg8a1P4Tb/view" class="text-primary-600 hover:underline">Dense Mapping of Microstructural Development in the Human Brain During First Two Years</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="experience-item">
            <div class="flex items-start space-x-4 mb-6">
              <div class="flex-shrink-0 w-5 h-5 bg-primary-800 dark:bg-primary-300 rounded-full mt-1">
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">🎓 ISMRM Education Stipend</h3>
                <p class="text-sm text-gray-500 dark:text-gray-400 mb-2">ISMRM • May 2018</p>
                <div class="text-sm text-gray-700 dark:text-gray-300">
                  • <a href="https://archive.ismrm.org/2018/1640.html" class="text-primary-600 hover:underline">Spatially Varying Signal-Drift Correction in Diffusion MRI</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    design:
      columns: '1'
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
