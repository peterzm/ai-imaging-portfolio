# 03 · Computer Vision

This module focuses on classical computer vision techniques for scientific image analysis.

The goal is to build practical image processing workflows that can support segmentation, feature extraction, texture analysis, object characterization, and later machine learning models.

This section is designed as a bridge between basic machine learning and applied scientific imaging projects.

---

## Module Focus

This module demonstrates how to work with images as quantitative data.

The notebooks cover methods that are useful before, alongside, or even instead of deep learning models, especially when datasets are small or when interpretability is important.

Main objectives include:

- loading and visualizing image data
- understanding pixel intensity distributions
- extracting gradient and edge information
- computing texture descriptors
- building feature-based classification workflows
- connecting image processing outputs with machine learning models
- preparing image analysis methods for scientific imaging applications

---

## Module Structure

```text
03_computer_vision/
├── notebooks/
├── figures/
├── data/
├── results/
└── README.md
```

---

## Notebooks

| Notebook | Focus |
|---|---|
| `01_image_loading_and_visualization.ipynb` | Image loading, visualization, image arrays, pixel values, grayscale and RGB representations. |
| `02_filtering_and_edge_detection.ipynb` | Image filtering, gradients, Sobel, Laplacian, Canny edges, and boundary detection. |
| `03_feature_extraction_from_images.ipynb` | Feature extraction from images using descriptors such as HOG and intensity-based measurements. |
| `04_texture_analysis_intro.ipynb` | Texture analysis concepts for scientific images and material-like patterns. |
| `05_texture_features_scientific_images.ipynb` | Texture feature extraction applied to synthetic and scientific-style image data. |
| `06_lbp_texture_analysis.ipynb` | Local Binary Patterns for texture representation and classification workflows. |
| `07_glcm_texture_features.ipynb` | Gray-Level Co-occurrence Matrix features for quantitative texture analysis. |
| `08_region_based_analysis_intro.ipynb` | Region-based measurements and object-level image analysis foundations. |

> Notebook names may be adjusted as the repository evolves.

---

## Main Topics Covered

### Image Representation

- Images as NumPy arrays
- Grayscale and RGB images
- Pixel intensity distributions
- Image normalization
- Image visualization

### Filtering and Edges

- Smoothing filters
- Gradient magnitude
- Sobel filters
- Laplacian filters
- Canny edge detection
- Interface and boundary detection

### Feature Extraction

- Hand-crafted image descriptors
- HOG features
- Intensity-based features
- Shape and region descriptors
- Feature vectors for machine learning

### Texture Analysis

- Local Binary Patterns (LBP)
- Gray-Level Co-occurrence Matrix (GLCM)
- Contrast, homogeneity, correlation, and energy
- Texture-based classification
- Scientific material-like texture analysis

### Region-Based Analysis

- Connected components
- Region properties
- Area, perimeter, centroid, eccentricity
- Object-level measurements
- Quantitative image descriptors

---

## Scientific Imaging Context

Classical computer vision is highly relevant in scientific imaging because many workflows require interpretable and quantitative measurements.

These methods can be applied to:

- microCT slices
- neutron and X-ray images
- geological sample images
- material texture images
- porous media images
- microscopy-like datasets
- defect and interface detection problems

In many scientific imaging problems, classical computer vision remains valuable because it provides direct measurements and transparent intermediate outputs.

---

## Why This Module Matters

Deep learning is powerful, but it is not always the first or only solution.

Classical computer vision methods are important because they:

- work well with small datasets
- provide interpretable features
- support quantitative analysis
- help diagnose image quality and preprocessing issues
- can be combined with machine learning classifiers
- provide baselines for deep learning models
- are useful for segmentation and measurement pipelines

This module provides the image processing foundation needed for later segmentation, deep learning, explainability, and applied scientific imaging projects.

---

## Generated Outputs

The notebooks generate outputs such as:

- processed image visualizations
- edge maps
- gradient magnitude images
- feature plots
- texture feature tables
- classification results
- region-based measurements
- figures for reporting

Outputs are saved mainly in:

```text
figures/
results/
```

---

## Libraries Used

- Python
- NumPy
- pandas
- Matplotlib
- scikit-image
- OpenCV
- scikit-learn

---

## Connection to the Portfolio

This module supports later sections of the portfolio:

- `04_segmentation` builds on filtering, morphology, and region analysis.
- `05_deep_learning_classification` extends image classification to CNNs and transfer learning.
- `06_explainability_and_evaluation` adds model evaluation, error analysis, and interpretability.
- `projects/` applies these techniques to scientific imaging case studies.

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Machine Learning
