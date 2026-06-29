# AI Imaging Portfolio

Applied machine learning, computer vision, scientific imaging, tomography, microCT analysis, applied statistics, SQL reporting, and Power BI dashboarding.

This repository connects my background in physics, geophysics, tomography, and scientific imaging with modern machine learning, computer vision, data analysis, and business-intelligence workflows.

The goal is to build practical, reproducible, and well-documented pipelines for image analysis problems commonly found in scientific, industrial, and technical reporting contexts.

---

## What this repository demonstrates

This portfolio demonstrates the ability to:

- build machine learning pipelines for scientific datasets
- process and analyze 2D and 3D scientific images
- extract classical computer vision features
- perform segmentation and region-based measurements
- analyze volumetric microCT data
- extract quantitative descriptors from segmented 3D images
- apply statistical modeling and validation to scientific imaging workflows
- perform A/B testing, effect-size analysis, bootstrap confidence intervals, and time-series monitoring
- detect anomalous regions using interpretable machine learning
- train and evaluate deep learning models for image classification
- use PyTorch and TensorFlow/Keras workflows
- evaluate models beyond global accuracy
- analyze model errors and prediction confidence
- apply visual explainability methods such as Grad-CAM and saliency maps
- prepare dashboard-ready feature tables from scientific analysis outputs
- create SQL reporting databases from Python-generated results
- build Power BI dashboards for quality monitoring and technical communication
- track experiments and organize reproducible results
- connect image analysis workflows with real scientific imaging problems

---

## Repository Structure

```text
ai-imaging-portfolio/
├── 01_ml_fundamentals/
├── 02_pytorch_basics/
├── 03_computer_vision/
├── 04_segmentation/
├── 05_deep_learning_classification/
├── 06_explainability_and_evaluation/
├── projects/
└── README.md
```

---

## Technical Modules

| Section | Focus |
|---|---|
| `01_ml_fundamentals` | Classical machine learning workflows, model comparison, metrics, and feature-based classification. |
| `02_pytorch_basics` | PyTorch tensor operations, autograd, model definition, training loops, and reusable deep learning workflows. |
| `03_computer_vision` | Classical computer vision for scientific images, including gradients, edges, texture features, and feature extraction. |
| `04_segmentation` | Segmentation workflows using thresholding, morphology, connected components, region properties, and watershed methods. |
| `05_deep_learning_classification` | CNNs, transfer learning, fine-tuning, data augmentation, regularization, and small dataset strategies. |
| `06_explainability_and_evaluation` | Model evaluation, confusion analysis, confidence analysis, Grad-CAM, saliency maps, error analysis, and experiment tracking. |

---

## Applied Scientific Imaging Projects

The `projects/` folder contains applied workflows based on scientific imaging and experimental-data problems.

Current completed projects include:

| Project | Focus | Main Methods | Status |
|---|---|---|---|
| `01_mortar_porosity_analysis` | Quantitative analysis of pores and phases in microCT images of mortar | Thresholding, morphology, connected components, region properties, pore-size analysis | Completed |
| `02_microct_subvolume_3d_analysis` | 3D phase segmentation and object-level analysis of a microCT subvolume | 3D volume loading, segmentation, mask refinement, connected components, 3D measurements | Completed |
| `03_3d_microct_process_monitoring` | Spatial quality monitoring and anomaly detection from segmented 3D microCT data | Slice-wise feature extraction, PCA, Isolation Forest, interpretable anomaly categories | Completed |
| `04_applied_statistics_for_scientific_imaging` | Applied statistical analysis of a synthetic microCT-inspired workflow | Physics-informed simulation, regression, validation, A/B testing, bootstrap confidence intervals, time-series trends | Completed |
| `05_microct_quality_monitoring_powerbi` | Power BI quality-monitoring dashboard from real microCT segmentation and anomaly-detection outputs | Python table preparation, SQLite reporting database, DAX measures, Power BI dashboarding | Completed |

Planned project directions include:

- neutron and X-ray multimodal image registration
- 3D porous-material analysis and permeability-related feature extraction
- deep learning strategies for small scientific imaging datasets
- volumetric segmentation workflows
- physics-informed machine learning for image-based material characterization
- automated reporting and dashboard refresh workflows

---

## Scientific Imaging Context

The repository is designed around problems commonly found in scientific imaging, including:

- microCT image analysis
- X-ray tomography
- neutron imaging
- GPR image interpretation
- materials characterization
- porosity and defect analysis
- segmentation of phases and structures
- 2D and 3D connected-component analysis
- spatial monitoring of volumetric data
- anomaly detection in image-derived feature tables
- statistical validation of imaging workflows
- image-based classification workflows
- technical reporting and dashboard communication

The focus is not only on training models, but also on building workflows that are interpretable, reproducible, and useful for scientific analysis, industrial inspection, and quality monitoring.

---

## Main Tools and Libraries

- Python
- NumPy
- pandas
- Matplotlib
- scikit-learn
- scikit-image
- OpenCV
- PyTorch
- TensorFlow / Keras
- SQLite
- SQL
- Power BI
- DAX
- Jupyter Notebook

---

## Portfolio Philosophy

This repository is organized as a progression from technical foundations to applied scientific imaging workflows.

The early modules provide the core machine learning, computer vision, segmentation, deep learning, and explainability foundations. The `projects/` folder then applies those tools to scientific imaging case studies, including real microCT data, synthetic physics-informed datasets, anomaly detection, statistical validation, and dashboard-based reporting.

The long-term goal is to develop a portfolio of scientific imaging and applied machine learning projects that demonstrates both technical data skills and domain knowledge in physics-based imaging.

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Statistics • Machine Learning
