# 3D microCT Process Monitoring

## Overview

This project presents a compact process-monitoring workflow for 3D microCT data.

Instead of repeating the segmentation step, this project reuses the segmented outputs generated in:

```text
projects/02_microct_subvolume_3d_analysis
```

The goal is to transform a previously segmented 3D microCT volume into a quantitative feature table and use it to detect spatial anomalies along the sample.

The workflow follows a simple idea:

```text
3D microCT volume + segmentation masks
        ↓
slice-wise quantitative features
        ↓
PCA visualization
        ↓
Isolation Forest anomaly detection
        ↓
interpretable anomaly categories
```

This project is designed as a short and focused extension of the previous 3D microCT analysis. The emphasis is not only on image segmentation, but on converting experimental imaging data into interpretable monitoring indicators.

---

## Motivation

In experimental imaging workflows, segmentation is only one part of the analysis. Once phases are identified, the next step is to quantify how the sample changes spatially.

In this project, each slice of the 3D volume is treated as a monitoring unit. For each slice, several features are extracted:

- phase fractions
- pore morphology
- resin morphology
- intensity statistics
- heterogeneity indicators

These features are then used to identify regions that deviate from the normal behavior of the sample.

This can be interpreted as a form of spatial quality monitoring along the 3D volume.

---

## Input Data

This project does not duplicate raw data.

The original microCT stack and segmentation masks are read directly from the previous project:

```text
projects/02_microct_subvolume_3d_analysis/
```

Main reused inputs:

```text
data/raw/DatosSubV/
data/processed/pores_mask.npy
data/processed/resin_mask_refined_ge50.npy
data/processed/material_mask.npy
data/processed/phase_labels_3class.npy
```

The matrix mask is reconstructed as a mutually exclusive phase using:

```python
mask_matrix = material_mask & (~mask_resin) & (~mask_pores)
```

This avoids overlap between pores, resin and matrix.

---

## Project Structure

```text
03_3d_microct_process_monitoring/
│
├── README.md
├── requirements.txt
│
├── notebooks/
│   ├── 01_build_feature_table_from_previous_segmentation.ipynb
│   └── 02_anomaly_detection_and_quality_mapping.ipynb
│
├── outputs/
│   ├── features_by_slice.csv
│   └── anomaly_results.csv
│
├── figures/
│   ├── 01_feature_table/
│   │   ├── representative_slices_with_masks.png
│   │   ├── phase_fraction_profiles.png
│   │   ├── pore_object_count_and_size_profiles.png
│   │   ├── resin_object_count_and_size_profiles.png
│   │   ├── intensity_and_heterogeneity_profiles.png
│   │   └── feature_correlation_matrix.png
│   │
│   └── 02_anomaly_detection/
│       ├── pca_feature_space_by_depth.png
│       ├── pca_anomaly_map.png
│       ├── anomaly_score_by_depth.png
│       ├── anomaly_category_summary.png
│       └── feature_contribution_summary.png
│
└── config/
    └── paths.py
```

---

## Notebook 01 — Build Feature Table from Previous Segmentation

The first notebook reuses the segmentation results from Project 02 and builds a slice-wise feature table.

### Main steps

1. Load the original TIFF stack from the previous project.
2. Load previously generated segmentation masks.
3. Verify mask consistency.
4. Visualize representative slices with segmentation overlays.
5. Extract quantitative features slice by slice.
6. Save the feature table.

### Extracted features

For each slice, the notebook computes:

```text
pore_fraction
resin_fraction
matrix_fraction
assigned_fraction
mean_intensity
std_intensity
mean_intensity_pores
mean_intensity_resin
mean_intensity_matrix
pore_object_count
mean_pore_area_um2
median_pore_area_um2
mean_pore_equivalent_diameter_um
median_pore_equivalent_diameter_um
resin_object_count
mean_resin_area_um2
median_resin_area_um2
mean_resin_equivalent_diameter_um
median_resin_equivalent_diameter_um
heterogeneity_index
```

The main output is:

```text
outputs/features_by_slice.csv
```

This table converts the 3D image volume into a structured dataset suitable for machine learning.

---

## Notebook 02 — Anomaly Detection and Quality Mapping

The second notebook uses the feature table to detect anomalous slices.

### Main steps

1. Load `features_by_slice.csv`.
2. Select monitoring features.
3. Standardize the features.
4. Use PCA for visualization.
5. Apply Isolation Forest for unsupervised anomaly detection.
6. Assign interpretable anomaly categories.
7. Save the final anomaly table.

### Machine learning methods

#### Standardization

Features are standardized before modeling because they have different units and scales:

```text
fractions
intensity values
object counts
equivalent diameters
```

Each feature is transformed as:

```text
x_scaled = (x - mean) / standard deviation
```

#### PCA

Principal Component Analysis is used for visualization. In this dataset, the first two principal components explain approximately 80% of the feature variance, making PCA useful for inspecting spatial patterns and outliers.

#### Isolation Forest

Isolation Forest is used as an unsupervised anomaly detection model. It identifies slices that are unusual in the multivariate feature space.

A conservative contamination value of 5% was used in the final analysis.

---

## Interpretable Anomaly Categories

Detected anomalous slices are assigned simple rule-based labels based on their feature values.

Possible categories include:

```text
high_porosity
resin_rich
resin_fragmented
large_pores
heterogeneous
multivariate_anomaly
```

This keeps the workflow interpretable. Instead of only saying that a slice is anomalous, the notebook provides a possible physical explanation.

Examples:

```text
high_porosity + large_pores
high_porosity + resin_fragmented
resin_rich + resin_fragmented
```

---

## Main Results

The anomaly detection workflow identified two main types of anomalous behavior:

1. Slices associated with strong contrast or structural differences near the beginning of the volume.
2. Slices associated with larger pores, increased porosity or stronger fragmentation of resin-like regions.

The PCA projection shows that anomalous slices are not randomly distributed. They occupy separated regions of the feature space, suggesting that the detected anomalies are linked to real changes in the sample or acquisition conditions.

The feature comparison between normal and anomalous slices shows that the strongest differences are mainly related to:

```text
pore_fraction
pore_object_count
resin_object_count
```

This indicates that the anomaly model is mostly sensitive to increased porosity and object fragmentation.

---

## Representative Figures

### Segmentation check

```text
figures/01_feature_table/representative_slices_with_masks.png
```

Shows representative slices from the original microCT volume together with segmentation overlays.

### Phase fraction profiles

```text
figures/01_feature_table/phase_fraction_profiles.png
```

Shows how pore, resin and matrix fractions vary along the z-axis.

### Pore and resin morphology profiles

```text
figures/01_feature_table/pore_object_count_and_size_profiles.png
figures/01_feature_table/resin_object_count_and_size_profiles.png
```

These figures show object count and mean equivalent diameter for pores and resin-like regions.

### PCA anomaly map

```text
figures/02_anomaly_detection/pca_anomaly_map.png
```

Shows normal and anomalous slices in the PCA feature space.

### Anomaly score by depth

```text
figures/02_anomaly_detection/anomaly_score_by_depth.png
```

Shows how the anomaly score changes along the volume.

### Feature contribution summary

```text
figures/02_anomaly_detection/feature_contribution_summary.png
```

Compares normal and anomalous slices in terms of relative feature changes.

---

## Why This Project Matters

This project demonstrates how 3D experimental imaging data can be converted into a compact and interpretable monitoring dataset.

The workflow is relevant for scientific imaging, materials characterization and quality-control scenarios where the objective is not only to segment a sample, but also to detect regions that deviate from normal behavior.

The project highlights skills in:

- 3D microCT data handling
- reuse of previous segmentation outputs
- quantitative feature extraction
- spatial variability analysis
- unsupervised anomaly detection
- interpretable machine learning
- reproducible scientific Python workflows

---

## Technical Stack

Main Python libraries:

```text
numpy
pandas
matplotlib
scikit-image
scikit-learn
tifffile
```

Main ML tools:

```text
StandardScaler
PCA
IsolationForest
```

---

## Relation to Previous Project

This project depends on the outputs of:

```text
projects/02_microct_subvolume_3d_analysis
```

The previous project focused on:

```text
3D microCT segmentation
phase separation
object extraction
porosity and resin analysis
```

This project focuses on:

```text
feature table construction
spatial monitoring
anomaly detection
interpretable quality mapping
```

Together, the two projects form a compact pipeline:

```text
Project 02: segment the 3D volume
Project 03: monitor and detect anomalous regions from the segmentation
```

---

## Summary

This project shows how a real 3D microCT dataset can be transformed into an interpretable machine learning workflow for spatial quality monitoring.

The key contribution is the transition from image segmentation to quantitative monitoring:

```text
segmented 3D volume → slice-wise features → anomaly detection → interpretable quality map
```
