# 04 · Segmentation

This module focuses on segmentation workflows for scientific image analysis.

Segmentation is one of the most important steps in quantitative imaging because it transforms raw image data into meaningful regions, objects, phases, or structures that can be measured.

The goal of this section is to build practical and interpretable segmentation pipelines using classical image processing methods.

---

## Module Focus

This module demonstrates how to go from an image to quantitative region-level information.

The notebooks cover methods that are widely used in scientific imaging workflows, especially when the goal is to identify, separate, measure, and characterize structures in 2D images.

Main objectives include:

- threshold-based segmentation
- binary mask creation
- morphological cleanup
- connected component labeling
- region property extraction
- watershed segmentation
- evaluation of segmentation quality
- end-to-end segmentation workflows for scientific images

---

## Module Structure

```text
04_segmentation/
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
| `01_thresholding_and_binary_masks.ipynb` | Thresholding methods, binary masks, and image-to-mask conversion. |
| `02_morphological_operations.ipynb` | Morphological operations for cleaning, filling, opening, closing, and refining masks. |
| `03_connected_components_and_regionprops.ipynb` | Connected component labeling and extraction of object-level measurements. |
| `04_watershed_segmentation.ipynb` | Watershed-based separation of touching or overlapping regions. |
| `05_segmentation_evaluation.ipynb` | Basic segmentation evaluation concepts and comparison of predicted masks. |
| `06_scientific_image_segmentation_pipeline.ipynb` | End-to-end segmentation workflow for scientific-style images. |
| `07_porosity_or_particle_analysis.ipynb` | Quantitative analysis of segmented pores, particles, or regions. |
| `08_segmentation_project_preparation.ipynb` | Preparation of reusable segmentation workflows for applied projects. |

> Notebook names may be adjusted as the repository evolves.

---

## Main Topics Covered

### Thresholding

- Global thresholding
- Adaptive thresholding
- Otsu thresholding
- Binary mask creation
- Intensity-based segmentation

### Morphological Processing

- Erosion
- Dilation
- Opening
- Closing
- Hole filling
- Small object removal
- Mask refinement

### Connected Components

- Object labeling
- Connected component analysis
- Region identification
- Object counting
- Label image visualization

### Region Properties

- Area
- Perimeter
- Centroid
- Bounding box
- Eccentricity
- Equivalent diameter
- Mean intensity
- Shape descriptors

### Watershed Segmentation

- Distance transforms
- Marker-based segmentation
- Separation of touching objects
- Over-segmentation and under-segmentation considerations

### Segmentation Evaluation

- Visual inspection
- Mask comparison
- Accuracy-related concepts
- Intersection over Union (IoU)
- Dice coefficient
- Error interpretation

---

## Scientific Imaging Context

Segmentation is central to many scientific imaging applications because it allows researchers to isolate and measure physically meaningful structures.

These workflows can be applied to:

- pores in microCT images
- particles and grains
- cracks and defects
- phases in multiphase materials
- geological sample structures
- biological or paleontological specimens
- neutron and X-ray imaging data
- tomography slice analysis

In scientific imaging, segmentation is not only a visual task. It is a quantitative step that directly affects measurements, statistics, and scientific interpretation.

---

## Why This Module Matters

Segmentation is often the bridge between image visualization and quantitative analysis.

A well-designed segmentation workflow enables:

- object counting
- size distribution analysis
- porosity estimation
- phase fraction measurement
- defect detection
- particle characterization
- region-based feature extraction
- preparation of masks for machine learning or deep learning models

This module provides the foundation for applied projects involving microCT, tomography, materials characterization, and scientific image analysis.

---

## Generated Outputs

The notebooks generate outputs such as:

- binary masks
- cleaned segmentation masks
- labeled region maps
- watershed segmentation results
- region property tables
- pore or particle size distributions
- segmentation comparison figures
- quantitative summaries

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

This module builds directly on `03_computer_vision` and prepares the ground for applied scientific imaging projects.

It connects to later sections in the following way:

- `05_deep_learning_classification` extends image modeling into neural networks and CNNs.
- `06_explainability_and_evaluation` provides tools to evaluate models, errors, and reproducibility.
- `projects/` applies segmentation workflows to real scientific imaging problems, including microCT porosity analysis and future geological or materials projects.

---

## Applied Relevance

The methods in this module are directly relevant to practical scientific imaging tasks such as:

```text
raw image
↓
preprocessing
↓
segmentation
↓
region labeling
↓
quantitative measurements
↓
scientific interpretation
```

This workflow is especially important for projects where the final output is not only a classified image, but a measurable physical quantity.

Examples include:

- pore size distribution
- number of particles
- segmented phase area
- crack length
- region circularity
- object density
- spatial distribution of features

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Machine Learning
