# Applied Statistics for Scientific Imaging

## Overview

This project applies **statistical modeling, validation, A/B testing, uncertainty analysis, and time-series trend analysis** to a synthetic scientific imaging workflow inspired by microCT acquisition and segmentation.

The goal is not to train a computer vision model directly, but to demonstrate how statistical methods can be used to understand experimental variability, quantify uncertainty, compare acquisition protocols, validate predictive models, and analyze temporal drift in image-quality metrics.

The dataset is synthetic but physically motivated. It was generated using simplified assumptions related to:

- Beer-Lambert attenuation.
- Counting-noise behavior.
- Signal-to-noise ratio.
- Contrast-to-noise ratio.
- Spatial detectability of pores.
- Detector drift over acquisition time.
- Segmentation bias and error.
- Experimental outliers.

This project was designed to demonstrate applied statistics skills relevant to data science and applied machine learning roles, including:

- Regression.
- Model validation.
- Cross-validation.
- Residual analysis.
- A/B testing.
- Hypothesis testing.
- Bootstrap confidence intervals.
- Effect size estimation.
- Time-series trend analysis.
- Outlier detection.

---

## Project Motivation

Scientific imaging workflows often produce quantitative measurements such as porosity, object size, contrast, noise, and segmentation error. These measurements are affected by acquisition settings, sample properties, image quality, spatial resolution, and instrumental drift.

In real experimental workflows, it is important to answer questions such as:

- Which acquisition parameters are associated with image-quality degradation?
- Can segmentation error be predicted from physical and image-quality metrics?
- Does an optimized acquisition protocol significantly improve the results?
- How much uncertainty is associated with protocol differences?
- Are image-quality metrics stable over time?
- Can abnormal acquisitions be detected statistically?

This project addresses these questions using a controlled synthetic dataset inspired by microCT imaging.

---

## Dataset

The dataset is generated in the first notebook and saved as:

```text
data/synthetic/microct_statistics_dataset.csv
```

Each row represents a simulated microCT acquisition or analyzed subvolume.

The dataset includes:

### Identification variables

- `sample_id`
- `time_index`
- `batch_id`
- `protocol`
- `is_outlier`

### Acquisition parameters

- `voltage_kV`
- `current_uA`
- `exposure_ms`
- `n_projections`
- `voxel_size_um`
- `filter_thickness_mm`

### True sample properties

- `true_porosity`
- `true_mean_pore_diameter_um`
- `true_heterogeneity`
- `sample_thickness_mm`

### Physics-informed variables

- `mu_matrix_effective`
- `intensity_matrix`
- `intensity_pore`
- `attenuation_contrast`
- `photon_signal`
- `photon_signal_norm`
- `relative_noise`
- `detector_drift`
- `relative_noise_drifted`
- `snr`
- `cnr`
- `snr_drifted`
- `cnr_drifted`

### Resolution and detectability metrics

- `pore_detectability`
- `detectability_score`

### Segmentation-related outputs

- `segmentation_bias`
- `segmentation_abs_error`
- `estimated_porosity`
- `porosity_error`
- `abs_porosity_error`
- `estimated_mean_pore_diameter_um`

### Synthetic quality metric

- `quality_score`

---

## Physics-Informed Synthetic Data Generation

The synthetic dataset is not random noise. It is generated using simplified physical and experimental assumptions.

### Signal and noise

The signal proxy increases with current, exposure time, and number of projections:

```text
signal ∝ current × exposure × number of projections
```

Relative noise follows a counting-statistics-inspired relationship:

```text
relative noise ∝ 1 / sqrt(signal)
```

### Attenuation and contrast

A simplified Beer-Lambert model is used to generate transmitted intensities:

```text
I = I0 exp(-μx)
```

The contrast between matrix and pore-like regions is computed from simplified attenuation differences.

### Spatial detectability

Pore detectability is defined as:

```text
pore_detectability = true_mean_pore_diameter_um / voxel_size_um
```

This captures a simple but important imaging constraint: small pores relative to voxel size are harder to resolve and segment.

### Segmentation error

The expected segmentation error is generated as a function of:

- CNR.
- Relative noise.
- Spatial detectability.
- Sample heterogeneity.
- Porosity-related complexity.

This creates a controlled target variable that can be used for regression and model validation.

---

## Acquisition Protocols

Two synthetic acquisition protocols are compared:

### Protocol A: Standard acquisition

Represents a faster or less optimized acquisition.

Typical characteristics:

- Lower exposure time.
- Fewer projections.
- Larger voxel size.
- Lower SNR and CNR.
- Higher expected segmentation error.

### Protocol B: Optimized acquisition

Represents an improved acquisition strategy.

Typical characteristics:

- Higher exposure time.
- More projections.
- Smaller voxel size.
- Higher SNR and CNR.
- Better pore detectability.
- Lower expected segmentation error.
- Higher quality score.

---

## Repository Structure

```text
04_applied_statistics_for_scientific_imaging/
├── data/
│   └── synthetic/
│       └── microct_statistics_dataset.csv
├── figures/
│   ├── 01_dataset_generation/
│   ├── 02_regression_validation/
│   ├── 03_ab_testing_uncertainty/
│   └── 04_time_series_trends/
├── notebooks/
│   ├── 01_synthetic_dataset_generation.ipynb
│   ├── 02_regression_and_model_validation.ipynb
│   ├── 03_ab_testing_and_uncertainty.ipynb
│   └── 04_time_series_trends.ipynb
└── results/
```

---

## Notebooks

### 01 — Synthetic Dataset Generation

**Notebook:** `01_synthetic_dataset_generation.ipynb`

This notebook generates the synthetic microCT-inspired dataset.

Main components:

- Acquisition parameter simulation.
- True sample property generation.
- Physics-informed signal and noise model.
- Spatial detectability calculation.
- Detector drift simulation.
- Segmentation error model.
- Outlier injection.
- Synthetic quality score generation.
- Control figures and sanity checks.

Key outputs:

```text
data/synthetic/microct_statistics_dataset.csv
figures/01_dataset_generation/
```

Important generated relationships include:

- Higher exposure reduces relative noise.
- Higher CNR reduces expected segmentation error.
- Higher pore detectability reduces expected segmentation error.
- Outliers show degraded quality and increased noise.

---

### 02 — Regression and Model Validation

**Notebook:** `02_regression_and_model_validation.ipynb`

This notebook evaluates whether the expected segmentation error can be predicted from acquisition parameters and physics-informed image-quality metrics.

Main methods:

- Feature-target correlation analysis.
- Train/test split.
- Linear Regression.
- Ridge Regression.
- Lasso Regression.
- Random Forest Regression.
- Model comparison using MAE, RMSE, and R².
- Cross-validation.
- Observed vs predicted analysis.
- Residual analysis.
- Residuals by acquisition protocol.
- Feature importance.
- Ridge coefficient interpretation.

Main target:

```text
segmentation_abs_error
```

Key result:

Linear models performed very well because the target was generated from physically motivated image-quality variables. This is expected and is used as a validation check of the data-generation logic.

Example model performance:

```text
Linear Regression test R² ≈ 0.976
Ridge Regression test R² ≈ 0.976
Lasso Regression test R² ≈ 0.974
Random Forest test R² ≈ 0.954
```

Interpretation:

- Higher relative noise increases expected segmentation error.
- Higher CNR reduces expected segmentation error.
- Higher detectability reduces expected segmentation error.
- Higher heterogeneity increases segmentation difficulty.
- Some acquisition parameters become less important once derived physics-informed metrics are included.

Key outputs:

```text
results/02_regression_model_comparison_segmentation_error.csv
results/02_cross_validation_results.csv
results/02_random_forest_feature_importance_segmentation_error.csv
results/02_ridge_coefficients_segmentation_error.csv
results/02_test_predictions_segmentation_error.csv
figures/02_regression_validation/
```

---

### 03 — A/B Testing and Uncertainty

**Notebook:** `03_ab_testing_and_uncertainty.ipynb`

This notebook compares the standard and optimized acquisition protocols.

Compared metrics:

- `segmentation_abs_error`
- `abs_porosity_error`
- `quality_score`
- `snr_drifted`
- `cnr_drifted`
- `detectability_score`

Statistical methods:

- Descriptive statistics by protocol.
- Welch t-test.
- Mann-Whitney U test.
- Cohen's d effect size.
- Bootstrap confidence intervals for mean differences.

Main result:

The optimized protocol improved all evaluated metrics relative to the standard protocol.

Example differences:

```text
segmentation_abs_error: B - A ≈ -0.0338
abs_porosity_error:     B - A ≈ -0.0030
quality_score:          B - A ≈ +22.46
snr_drifted:            B - A ≈ +1.55
cnr_drifted:            B - A ≈ +5.21
detectability_score:    B - A ≈ +0.21
```

Bootstrap confidence intervals supported the improvement for every metric.

Effect size analysis showed:

```text
cnr_drifted:             Cohen's d ≈ +3.28
snr_drifted:             Cohen's d ≈ +2.21
quality_score:           Cohen's d ≈ +2.20
segmentation_abs_error:  Cohen's d ≈ -2.14
detectability_score:     Cohen's d ≈ +0.83
abs_porosity_error:      Cohen's d ≈ -0.27
```

Interpretation:

- The optimized protocol strongly improves CNR, SNR, and quality score.
- It strongly reduces expected segmentation error.
- The observed porosity error improves more modestly because it includes additional measurement variability.

Key outputs:

```text
results/03_ab_protocol_descriptive_summary.csv
results/03_ab_protocol_statistical_tests.csv
results/03_ab_protocol_bootstrap_confidence_intervals.csv
results/03_ab_protocol_effect_sizes.csv
figures/03_ab_testing_uncertainty/
```

---

### 04 — Time-Series Trends and Drift

**Notebook:** `04_time_series_trends.ipynb`

This notebook analyzes how image-quality metrics evolve over simulated acquisition time.

Main methods:

- Time-series visualization.
- Rolling mean.
- Rolling standard deviation.
- Linear trend estimation.
- 3-sigma control limits.
- Percentile-based outlier detection.
- Comparison with synthetic outlier labels.

Main temporal findings:

```text
relative_noise_drifted increases over time
snr_drifted decreases over time
cnr_drifted decreases over time
segmentation_abs_error increases slightly over time
quality_score decreases mildly over time
abs_porosity_error shows no clear temporal trend
```

Example trend estimates:

```text
relative_noise_drifted: slope per 100 steps ≈ +0.0024
snr_drifted:            slope per 100 steps ≈ -0.0570
cnr_drifted:            slope per 100 steps ≈ -0.1983
segmentation_abs_error: slope per 100 steps ≈ +0.0013
quality_score:          slope per 100 steps ≈ -0.8098
abs_porosity_error:     no significant temporal trend
```

Outlier detection:

- A global 3-sigma rule detected extreme cases with high precision but low recall.
- Percentile-based detection provided a more balanced comparison across metrics.
- The synthetic `quality_score` gave the best outlier-detection balance among the tested metrics.

Key outputs:

```text
results/04_time_series_linear_trends.csv
results/04_time_series_rolling_statistics.csv
results/04_control_limits_3sigma.csv
results/04_control_limits_3sigma_outlier_comparison.csv
results/04_percentile_outlier_thresholds.csv
results/04_percentile_outlier_detection_comparison.csv
figures/04_time_series_trends/
```

---

## Selected Figures

### Physics-informed dataset checks

Expected segmentation error decreases as CNR increases:

```text
figures/01_dataset_generation/segmentation_error_vs_cnr.png
```

Expected segmentation error decreases as pore detectability improves:

```text
figures/01_dataset_generation/detectability_vs_segmentation_error.png
```

Expected and observed segmentation-related errors are related, but the observed error is noisier:

```text
figures/01_dataset_generation/expected_vs_observed_error.png
```

### Regression and validation

Feature correlation with expected segmentation error:

```text
figures/02_regression_validation/feature_correlation_with_segmentation_error.png
```

Observed vs predicted expected segmentation error:

```text
figures/02_regression_validation/observed_vs_predicted_segmentation_error.png
```

Random Forest feature importance:

```text
figures/02_regression_validation/random_forest_feature_importance_segmentation_error.png
```

Ridge regression coefficients:

```text
figures/02_regression_validation/ridge_standardized_coefficients_segmentation_error.png
```

### A/B testing

Bootstrap confidence intervals for A/B differences:

```text
figures/03_ab_testing_uncertainty/bootstrap_ci_ab_differences.png
```

Standardized effect sizes:

```text
figures/03_ab_testing_uncertainty/cohens_d_effect_sizes.png
```

### Time-series analysis

Relative noise drift over time:

```text
figures/04_time_series_trends/time_series_relative_noise_drifted.png
```

SNR drift over time:

```text
figures/04_time_series_trends/time_series_snr_drifted.png
```

Quality score over time:

```text
figures/04_time_series_trends/time_series_quality_score.png
```

Outlier detection performance:

```text
figures/04_time_series_trends/percentile_outlier_detection_precision_recall.png
```

---

## Main Skills Demonstrated

This project demonstrates applied statistical analysis in a scientific imaging context.

### Statistics

- Descriptive statistics.
- Correlation analysis.
- Regression modeling.
- Cross-validation.
- Residual analysis.
- Hypothesis testing.
- Bootstrap uncertainty estimation.
- Effect size analysis.
- Time-series trend estimation.
- Control limits.
- Outlier detection.

### Machine Learning

- Linear Regression.
- Ridge Regression.
- Lasso Regression.
- Random Forest Regression.
- Feature importance.
- Model comparison.
- Train/test validation.
- Cross-validation.

### Scientific Imaging Context

- Signal-to-noise ratio.
- Contrast-to-noise ratio.
- Spatial resolution.
- Pore detectability.
- Segmentation error.
- Detector drift.
- Protocol comparison.

### Python Tools

- NumPy.
- Pandas.
- Matplotlib.
- SciPy.
- scikit-learn.

---

## How to Run

From the project root, open the notebooks in order:

```text
notebooks/01_synthetic_dataset_generation.ipynb
notebooks/02_regression_and_model_validation.ipynb
notebooks/03_ab_testing_and_uncertainty.ipynb
notebooks/04_time_series_trends.ipynb
```

The first notebook generates the dataset required by the following notebooks.

Recommended execution order:

```text
01 → 02 → 03 → 04
```

---

## Important Notes

This project uses synthetic data.

The dataset is not intended to represent a specific microCT experiment or material system. Instead, it was designed to provide a controlled environment for demonstrating applied statistics using physically motivated assumptions.

The high regression performance in Notebook 02 should be interpreted in that context: the expected segmentation error is a synthetic target generated from known physical and image-quality relationships. Therefore, high predictive performance validates that the models recover the structure imposed by the data-generation process.

The observed porosity error is intentionally noisier and less predictable, reflecting the additional variability expected in downstream measurement errors.

---

## Limitations

- The dataset is synthetic and simplified.
- The attenuation model is not material-specific.
- The signal and noise model is a simplified approximation.
- The segmentation error model is designed for statistical demonstration.
- No real image segmentation is performed in this project.
- Protocol differences are simulated rather than experimentally measured.

---

## Possible Extensions

Future improvements could include:

- Generating synthetic 2D or 3D image volumes.
- Performing actual segmentation on synthetic images.
- Adding mixed-effects models for batch-level variability.
- Comparing temporal validation against random train/test splits.
- Adding Bayesian uncertainty estimation.
- Extending the drift model to include abrupt changes or maintenance events.
- Using SHAP or permutation importance for model interpretation.
- Testing additional outlier detection methods such as Isolation Forest or robust z-scores.

---

## Summary

This project shows how statistical methods can be applied to a scientific imaging workflow.

Starting from a physics-informed synthetic dataset, the analysis demonstrates how to:

- Generate realistic tabular data from simplified physical assumptions.
- Validate regression models.
- Compare experimental protocols using A/B testing.
- Quantify uncertainty with bootstrap confidence intervals.
- Estimate effect sizes.
- Analyze temporal drift.
- Detect abnormal acquisitions.

The project bridges experimental physics, scientific imaging, applied statistics, and machine learning.
