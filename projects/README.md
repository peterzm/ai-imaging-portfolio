# Applied Data Science and Machine Learning Projects

This folder contains end-to-end applied projects focused on scientific imaging, computer vision, segmentation, quantitative image analysis, applied statistics, machine learning, time-series forecasting, uncertainty quantification, operational analytics, and dashboard-oriented reporting.

The goal of this section is to demonstrate how the technical foundations of the repository can be applied to concrete scientific, industrial, and business problems using reproducible Python pipelines. Unlike the previous sections, which are organized as technical foundations, this folder is designed as a growing project portfolio.

New datasets, imaging modalities, forecasting problems, statistical workflows, BI dashboards, and case studies will be added over time.

---

## Project Focus

The projects in this folder are designed to show practical ability to:

- define a scientific, industrial, or business problem
- organize image, tabular, time-series, metadata, and derived feature data
- build reproducible analysis pipelines
- apply classical computer vision and machine learning methods
- perform segmentation and region-based measurements
- extract quantitative descriptors from 2D and 3D images
- analyze spatial variability in volumetric data
- detect anomalous regions using interpretable machine learning
- apply statistical modeling, validation, and uncertainty analysis
- compare experimental protocols using A/B testing and effect sizes
- analyze time-series trends, instrumental drift, seasonality, events, and outlier behavior
- build forecasting models with leakage-safe temporal validation
- compare statistical and machine-learning models under rolling-origin backtesting
- calibrate probabilistic forecasts using prior out-of-sample errors
- model multi-day uncertainty while preserving temporal dependence
- translate predictive uncertainty into cost-sensitive operational decisions
- transform analysis outputs into SQL- and dashboard-ready reporting tables
- build Power BI dashboards for technical monitoring and communication
- generate figures and tables suitable for reporting
- document assumptions, limitations, validation results, and future improvements

---

## Current and Planned Projects

| Project | Problem | Data Type | Main Methods | Status |
|---|---|---|---|---|
| `01_mortar_porosity_analysis` | Quantitative analysis of pores and phases in microCT images of mortar | 2D microCT slice | Thresholding, morphology, connected components, region properties, pore size analysis | Completed |
| `02_microct_subvolume_3d_analysis` | 3D phase segmentation and object-level analysis of a microCT subvolume | 3D microCT stack | 3D volume loading, phase segmentation, mask refinement, connected components, object feature extraction, quantitative 3D analysis | Completed |
| `03_3d_microct_process_monitoring` | Spatial quality monitoring and anomaly detection from previously segmented 3D microCT data | 3D microCT-derived feature table | Feature extraction, slice-wise monitoring, PCA, Isolation Forest, interpretable anomaly categories | Completed |
| `04_applied_statistics_for_scientific_imaging` | Applied statistical analysis of a synthetic scientific imaging workflow inspired by microCT acquisition and segmentation | Synthetic microCT-inspired tabular dataset | Physics-informed data generation, regression, model validation, A/B testing, bootstrap confidence intervals, effect sizes, time-series trends, outlier detection | Completed |
| `05_microct_quality_monitoring_powerbi` | BI reporting and quality-monitoring dashboard from real microCT segmentation and anomaly-detection outputs | MicroCT-derived feature tables, representative slice images, SQL database, Power BI dashboard | Python table preparation, representative image export, SQLite reporting database, DAX measures, Power BI dashboards, slice-level monitoring | Completed |
| `06_fintech-liquidity-forecasting` | Forecast daily Fintech cash outflows and convert forecast uncertainty into an operational liquidity-reserve decision | Synthetic daily Fintech time series with calendar, promotion, settlement, incident, and macroeconomic variables | Dynamic regression with ARIMA errors, ETS, LightGBM, rolling-origin backtesting, empirical probabilistic calibration, moving-block bootstrap, cost-sensitive reserve optimization | Completed |
| `07_multimodal_neutron_xray_registration` | Registration and comparison of neutron and X-ray tomography datasets | 3D neutron CT and X-ray CT volumes | Multimodal registration, transformation handling, bivariate histograms, voxel-wise comparison | Planned |
| `08_permeability_from_3d_microct_features` | Image-based prediction or interpretation of porous-media properties from 3D CT data | 3D rock or porous-material volumes | 3D feature extraction, porosity/connectivity metrics, classical ML, physics-informed interpretation | Planned |
| `09_small_dataset_scientific_imaging_dl` | Deep learning strategies for small scientific imaging datasets | 2D/3D scientific images | Transfer learning, data augmentation, model evaluation, explainability | Planned |

This list is not fixed. The folder will continue to grow with additional projects spanning tomography, neutron imaging, multimodal registration, 3D image analysis, applied statistics, forecasting, risk analytics, business-intelligence dashboards, physics-informed synthetic data, and volumetric deep learning.

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

### 04 · Applied Statistics for Scientific Imaging

The fourth completed project applies statistical modeling and validation to a synthetic scientific imaging workflow inspired by microCT acquisition and segmentation.

The workflow includes:

- generating a synthetic but physically motivated microCT-inspired dataset
- modeling signal, noise, CNR, SNR, spatial detectability, detector drift, and segmentation error
- comparing standard and optimized acquisition protocols
- training regression models to predict expected segmentation error
- validating models with train/test metrics and cross-validation
- inspecting residuals and feature importance
- performing A/B testing with Welch tests, Mann-Whitney tests, Cohen's d, and bootstrap confidence intervals
- analyzing time-series trends, rolling statistics, drift behavior, and outlier detection performance

This project demonstrates applied statistics skills in a scientific imaging context, including regression, model validation, uncertainty analysis, A/B testing, and time-series trend analysis.

---

### 05 · MicroCT Quality Monitoring Dashboard with Power BI

The fifth completed project converts real microCT segmentation and anomaly-detection outputs into a compact Power BI dashboard.

The workflow includes:

- reusing segmentation, feature-extraction, and anomaly-detection outputs from previous microCT projects
- preparing dashboard-ready tables with Python
- exporting representative slice images for dashboard exploration
- building a lightweight SQLite reporting database
- documenting SQL schema and example reporting queries
- creating Power BI measures with DAX
- designing a two-page dashboard for quality monitoring and representative slice exploration

The dashboard includes:

- a **MicroCT Quality Monitoring Overview** page with global KPIs, phase-fraction trends, normal vs anomalous slice counts, and anomaly category summaries
- a **MicroCT Slice Explorer** page for selected representative slices, including slice-level metrics, anomaly labels, and available image files

This project demonstrates how scientific image-analysis outputs can be transformed into a reporting-oriented workflow using Python, SQL, and Power BI.

---

### 06 · Fintech Liquidity Forecasting and Reserve Optimization

The sixth completed project extends the portfolio beyond imaging into an end-to-end forecasting and decision-analytics problem for a simulated Fintech.

The objective is to forecast daily cash outflows and translate predictive uncertainty into a five-day liquidity-reserve recommendation for treasury.

The workflow includes:

- generating a reproducible synthetic daily Fintech dataset with 1,308 observations and 39 variables
- analyzing calendar effects, promotions, settlements, incidents, macroeconomic variables, and time-series structure
- comparing simple benchmarks, ETS, dynamic regression with ARIMA errors, and a LightGBM challenger
- enforcing homogeneous expanding-window rolling-origin backtesting across 20 folds and a 28-day forecast horizon
- selecting `calendar_promotion_trend_arima011_errors` as the final universal point model
- reducing MAE to 63.75 ARS million, approximately 40.2% below the historical weekday benchmark
- calibrating daily probabilistic forecasts from expanding empirical distributions of prior out-of-sample log errors
- simulating five-day cumulative liquidity risk with a moving-block bootstrap to preserve short-range dependence
- evaluating reserve policies under asymmetric shortfall and idle-capital costs
- selecting a P99 five-day reserve under the illustrative 19:1 shortfall-to-idle-capital cost ratio
- achieving 14 successful windows out of 15 in the final five-day evaluation, with one shortfall window
- exporting validated dashboard-ready datasets, operational KPIs, audit artifacts, and final figures

This project demonstrates how forecasting accuracy, temporal validation, uncertainty calibration, simulation, and business-cost asymmetry can be combined into an auditable operational decision framework.

---

## Project Template

Each project should follow a clear and reproducible structure:

```text
project_name/
├── notebooks/
├── data/
├── figures/
├── outputs/ or results/
├── models/
└── README.md
```

Depending on the project, not all folders are required. Some projects may reuse data or processed outputs from previous projects to avoid unnecessary duplication.

Projects that include dashboarding, reporting, or reusable code may also include:

```text
project_name/
├── src/
├── dashboard/ or powerbi/
├── sql/
└── data/dashboard_exports/ or data/processed/
```

---

## Recommended Project Documentation

Each project README should include:

```text
Problem
Dataset
Scientific, operational, or business context
Methods
Validation strategy
Pipeline
Results
Figures
Limitations
Next steps
```

For dashboard-oriented projects, the README should also describe:

```text
Dashboard pages or dashboard-ready outputs
Reporting tables
Data model
BI tool used
Key indicators
Interactive elements
```

This structure helps communicate the work clearly to both technical and non-technical audiences.

---

## Evaluation Criteria

Projects should not only show code execution. They should demonstrate a complete analysis and decision workflow.

A strong project should answer:

```text
What problem is being addressed?
What type of data is used?
What preprocessing, simulation, or feature-engineering steps were applied?
What method was used and why?
How was leakage prevented when temporal or predictive modeling was involved?
How were models or statistical results validated?
How was uncertainty quantified when relevant?
What quantitative results were obtained?
How do the results connect to a scientific, operational, or business decision?
How were the results communicated?
What are the limitations of the workflow?
How could the project be improved or extended?
```

---

## Scientific Imaging, Forecasting, Applied Statistics, and Reporting Context

The projects are connected to problems relevant to:

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
- regression and statistical validation
- A/B testing for experimental protocol comparison
- time-series analysis and forecasting
- rolling-origin temporal validation
- probabilistic forecasting and uncertainty calibration
- operational risk simulation
- asymmetric cost-sensitive decision making
- physics-informed synthetic data generation
- SQL-based reporting
- Power BI dashboards and dashboard-ready analytical outputs

The emphasis is on applied workflows that combine domain knowledge with image processing, statistics, machine learning, forecasting, reproducible validation, and clear communication of results.

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
- mixed-effects statistical models for batch-level experimental variability
- Bayesian uncertainty estimation for scientific and forecasting workflows
- additional financial forecasting, risk, and operational-analytics case studies
- automated dashboard refresh from Python-generated reporting tables
- Power BI Service publishing workflows for technical reports

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Forecasting • Statistics • Machine Learning
