# Applied Scientific Imaging Projects

This folder contains applied projects focused on scientific imaging, computer vision, segmentation, quantitative image analysis, and machine learning workflows.

The goal of this section is to demonstrate how the technical modules of the repository can be applied to real scientific imaging problems using reproducible Python pipelines.

Unlike the previous sections, which are organized as technical foundations, this folder is designed as a growing project portfolio. New datasets, imaging modalities, and case studies will be added over time.

---

## Project Focus

The projects in this folder are designed to show practical ability to:

- define a scientific imaging problem
- organize image data and metadata
- build reproducible analysis pipelines
- apply classical computer vision and machine learning methods
- perform segmentation and region-based measurements
- extract quantitative descriptors from 2D and 3D images
- analyze spatial variability in volumetric data
- detect anomalous regions using interpretable machine learning
- generate figures and tables suitable for reporting
- document limitations and future improvements

---

## Current and Planned Projects

| Project | Scientific Problem | Data Type | Main Methods | Status |
|---|---|---|---|---|
| `01_mortar_porosity_analysis` | Quantitative analysis of pores and phases in microCT images of mortar | 2D microCT slice | Thresholding, morphology, connected components, region properties, pore size analysis | Completed |
| `02_microct_subvolume_3d_analysis` | 3D phase segmentation and object-level analysis of a microCT subvolume | 3D microCT stack | 3D volume loading, phase segmentation, mask refinement, connected components, object feature extraction, quantitative 3D analysis | Completed |
| `03_3d_microct_process_monitoring` | Spatial quality monitoring and anomaly detection from previously segmented 3D microCT data | 3D microCT-derived feature table | Feature extraction, slice-wise monitoring, PCA, Isolation Forest, interpretable anomaly categories | Completed |
| `04_multimodal_neutron_xray_registration` | Registration and comparison of neutron and X-ray tomography datasets | 3D neutron CT and X-ray CT volumes | Multimodal registration, transformation handling, bivariate histograms, voxel-wise comparison | Planned |
| `05_permeability_from_3d_microct_features` | Image-based prediction or interpretation of porous-media properties from 3D CT data | 3D rock or porous-material volumes | 3D feature extraction, porosity/connectivity metrics, classical ML, physics-informed interpretation | Planned |
| `06_small_dataset_scientific_imaging_dl` | Deep learning strategies for small scientific imaging datasets | 2D/3D scientific images | Transfer learning, data augmentation, model evaluation, explainability | Planned |

This list is not fixed. The folder will continue to grow with additional projects, including tomography-based workflows, neutron imaging data, multimodal registration, 3D image analysis, and volumetric deep learning.

---

## Completed Projects

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

### 02 · MicroCT Subvolume 3D Analysis

The second completed project extends the analysis from 2D slices to a real 3D microCT subvolume.

The workflow includes:

- loading a 3D TIFF stack
- inspecting the volume slice by slice
- segmenting the main material phases
- refining pore and resin masks
- separating resin-like connected components
- extracting object-level measurements in 3D
- visualizing phase distributions and quantitative results

This project demonstrates the transition from 2D image analysis to volumetric scientific imaging, including 3D segmentation and feature extraction.

---

### 03 · 3D MicroCT Process Monitoring

The third completed project reuses the segmentation outputs from Project 02 and builds a compact monitoring and anomaly-detection workflow.

The workflow includes:

- loading previous segmentation masks without duplicating raw data
- building a slice-wise feature table
- extracting pore, resin, matrix, intensity, and heterogeneity descriptors
- visualizing spatial variability along the volume
- using PCA to inspect the feature space
- applying Isolation Forest for unsupervised anomaly detection
- assigning interpretable anomaly categories such as high porosity, resin-rich, resin-fragmented, and large-pore regions

This project demonstrates how segmented 3D imaging data can be transformed into a machine-learning-ready monitoring dataset.

---

## Project Template

Each project should follow a clear and reproducible structure:

```text
project_name/
├── notebooks/
├── data/
├── figures/
├── outputs/
├── models/
└── README.md
```

Depending on the project, not all folders are required. Some projects may reuse data or processed outputs from previous projects to avoid unnecessary duplication.

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
- spatial monitoring of 3D volumes
- anomaly detection in scientific imaging data

The emphasis is on applied workflows that combine domain knowledge with image processing and machine learning.

---

## Future Directions

Future projects may include:

- neutron and X-ray multimodal image registration
- 3D segmentation of porous materials
- permeability-related image analysis
- defect detection in scientific images
- deep learning for small scientific datasets
- 3D U-Net segmentation workflows
- physics-informed machine learning for image-based material characterization

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Machine Learning
