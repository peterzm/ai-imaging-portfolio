# Applied Scientific Imaging Projects

This folder contains applied projects focused on scientific imaging, computer vision, segmentation, quantitative image analysis, and machine learning workflows.

The goal of this section is to demonstrate how the technical modules of the repository can be applied to real or realistic scientific imaging problems.

Unlike the previous sections, which are organized as technical foundations, this folder is designed as a growing project portfolio. New datasets, imaging modalities, and case studies will be added over time.

---

## Project Focus

The projects in this folder are designed to show practical ability to:

- define a scientific imaging problem
- organize image data and metadata
- build reproducible analysis pipelines
- apply classical computer vision and machine learning methods
- perform segmentation and region-based measurements
- extract quantitative descriptors from images
- evaluate results with appropriate metrics
- generate figures and tables suitable for reporting
- document limitations and future improvements

---

## Current and Planned Projects

| Project | Scientific Problem | Data Type | Main Methods | Status |
|---|---|---|---|---|
| `01_mortar_porosity_analysis` | Quantitative analysis of pores and phases in microCT images of mortar | 2D microCT slices | Thresholding, morphology, connected components, region properties, pore size analysis | Completed |
| `01_microct_region_analysis_project.ipynb` | Region-based analysis of microCT images for quantitative scientific measurements | microCT images | Segmentation, region properties, area analysis, intensity analysis | Planned |
| `02_materials_texture_classification_project.ipynb` | Classification of material textures using image descriptors and machine learning | Scientific/material images | Texture features, classical ML, evaluation metrics | Planned |
| `03_geological_sample_segmentation_project.ipynb` | Segmentation of geological or rock sample images | Geological/scientific images | Thresholding, morphology, watershed, region analysis | Planned |
| `04_scientific_imaging_end_to_end_pipeline.ipynb` | Complete image analysis workflow from raw data to results | Scientific images | Preprocessing, segmentation, feature extraction, model evaluation, reporting | Planned |

This list is not fixed. The folder will continue to grow with additional projects, including tomography-based workflows, neutron imaging data, 3D image analysis, and volumetric deep learning.

---

## Completed Project

### 01 · Mortar Porosity Analysis

The first completed project applies image processing and quantitative analysis to microCT images of a mortar sample.

The workflow includes:

- loading and inspecting microCT image data
- separating relevant phases
- segmenting pores
- cleaning masks with morphological operations
- labeling connected components
- extracting pore-level measurements
- analyzing pore size distributions
- visualizing quantitative results

This project demonstrates how classical computer vision and region-based analysis can be used to extract physically meaningful information from scientific images.

---

## Project Template

Each project should follow a clear and reproducible structure:

```text
project_name/
├── notebooks/
├── data/
├── figures/
├── results/
├── models/
└── README.md
```

Depending on the project, not all folders are required.

---

## Recommended Project Documentation

Each project README should include:

```text
Problem
Dataset
Scientific context
Methods
Pipeline
Results
Figures
Limitations
Next steps
```

This structure helps communicate the work clearly to both technical and non-technical audiences.

---

## Evaluation Criteria

Projects should not only show code execution. They should demonstrate a complete analysis workflow.

A strong project should answer:

```text
What scientific problem is being addressed?
What type of image data is used?
What preprocessing steps were applied?
What method was used and why?
What quantitative results were obtained?
What are the limitations of the workflow?
How could the project be improved or extended?
```

---

## Scientific Imaging Context

The projects are connected to imaging problems relevant to:

- microCT analysis
- X-ray tomography
- neutron imaging
- materials characterization
- porosity analysis
- geological sample analysis
- phase segmentation
- defect detection
- quantitative image-based measurements

The emphasis is on applied workflows that combine domain knowledge with image processing and machine learning.

---

## Future Directions

Future projects may include:

- 3D microCT volume analysis
- 3D segmentation of porous materials
- permeability-related image analysis
- neutron and X-ray multimodal image registration
- defect detection in scientific images
- deep learning for small scientific datasets
- physics-informed machine learning for image-based material characterization

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Machine Learning
