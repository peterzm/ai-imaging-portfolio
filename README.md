# AI Imaging & Applied ML Portfolio

Applied machine learning, computer vision, scientific imaging, tomography, microCT analysis, applied statistics, time-series forecasting, probabilistic modeling, SQL reporting, and Power BI dashboarding.

This repository connects my background in physics, geophysics, tomography, and scientific imaging with modern machine learning, computer vision, data analysis, forecasting, uncertainty quantification, and business-intelligence workflows.

The goal is to build practical, reproducible, and well-documented analytical pipelines for scientific, industrial, and data-driven decision problems. The portfolio is centered on scientific imaging while also extending into applied forecasting and operational analytics.

---

## What this repository demonstrates

This portfolio demonstrates the ability to:

- build machine learning pipelines for scientific and operational datasets
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
- formulate and validate time-series forecasting problems using temporal backtesting
- compare statistical and machine-learning forecasting models under a common rolling-origin framework
- build leakage-safe feature engineering and validation pipelines
- quantify predictive uncertainty using empirical out-of-sample calibration
- model multi-day risk while preserving temporal dependence
- connect probabilistic forecasts to asymmetric business costs and operational decisions
- prepare dashboard-ready feature and forecasting tables
- create SQL reporting databases from Python-generated results
- build Power BI dashboards for quality monitoring and technical communication
- track experiments and organize reproducible results
- connect analytical workflows with real scientific, industrial, and business decision problems

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

## Applied Projects

The `projects/` folder contains end-to-end workflows based on scientific imaging, experimental data, applied statistics, forecasting, and operational decision problems.

Current completed projects include:

| Project | Focus | Main Methods | Status |
|---|---|---|---|
| `01_mortar_porosity_analysis` | Quantitative analysis of pores and phases in microCT images of mortar | Thresholding, morphology, connected components, region properties, pore-size analysis | Completed |
| `02_microct_subvolume_3d_analysis` | 3D phase segmentation and object-level analysis of a microCT subvolume | 3D volume loading, segmentation, mask refinement, connected components, 3D measurements | Completed |
| `03_3d_microct_process_monitoring` | Spatial quality monitoring and anomaly detection from segmented 3D microCT data | Slice-wise feature extraction, PCA, Isolation Forest, interpretable anomaly categories | Completed |
| `04_applied_statistics_for_scientific_imaging` | Applied statistical analysis of a synthetic microCT-inspired workflow | Physics-informed simulation, regression, validation, A/B testing, bootstrap confidence intervals, time-series trends | Completed |
| `05_microct_quality_monitoring_powerbi` | Power BI quality-monitoring dashboard from real microCT segmentation and anomaly-detection outputs | Python table preparation, SQLite reporting database, DAX measures, Power BI dashboarding | Completed |
| `06_fintech-liquidity-forecasting` | Forecasting daily cash outflows and translating uncertainty into an operational liquidity-reserve policy | Dynamic regression with ARIMA errors, ETS, LightGBM, rolling-origin backtesting, probabilistic calibration, moving-block bootstrap, cost-sensitive reserve optimization | Completed |

Planned project directions include:

- neutron and X-ray multimodal image registration
- 3D porous-material analysis and permeability-related feature extraction
- deep learning strategies for small scientific imaging datasets
- volumetric segmentation workflows
- physics-informed machine learning for image-based material characterization
- additional forecasting, risk, and decision-analytics workflows
- automated reporting and dashboard refresh workflows

---

## Scientific Imaging and Applied Analytics Context

The repository is designed around problems commonly found in scientific imaging and applied data science, including:

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
- time-series forecasting and temporal validation
- probabilistic forecasting and uncertainty calibration
- operational risk simulation
- cost-sensitive decision optimization
- technical reporting and dashboard communication

The focus is not only on training models, but on building workflows that are interpretable, reproducible, properly validated, and useful for scientific analysis, industrial inspection, operational forecasting, and data-driven decision support.

---

## Main Tools and Libraries

- Python
- NumPy
- pandas
- SciPy
- Matplotlib
- scikit-learn
- scikit-image
- OpenCV
- statsmodels
- LightGBM
- SHAP
- PyTorch
- TensorFlow / Keras
- SQLite
- SQL
- Power BI
- DAX
- Jupyter Notebook

---

## Portfolio Philosophy

This repository is organized as a progression from technical foundations to applied end-to-end analytical workflows.

The early modules provide core machine learning, computer vision, segmentation, deep learning, and explainability foundations. The `projects/` folder then applies those skills to complete case studies, including real microCT data, synthetic physics-informed datasets, anomaly detection, statistical validation, dashboard-based reporting, time-series forecasting, probabilistic calibration, and operational decision optimization.

The long-term goal is to develop a portfolio that demonstrates both strong domain knowledge in physics-based imaging and transferable applied data-science skills across scientific, industrial, and business problems.

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Forecasting • Statistics • Machine Learning
