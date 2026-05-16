# 06 · Explainability and Evaluation

This module focuses on model evaluation, interpretability, error analysis, and experiment tracking for image classification workflows.

The goal is to move beyond training models and global accuracy scores, and instead develop a more critical and professional approach to evaluating computer vision models, especially in the context of scientific imaging.

This section emphasizes:

- model evaluation beyond accuracy
- per-class performance analysis
- confusion matrices
- prediction confidence
- visual explainability
- Grad-CAM and saliency maps
- systematic error analysis
- reproducibility
- experiment tracking

---

# Module Structure

```text
06_explainability_and_evaluation/
├── notebooks/
│   ├── 01_model_evaluation_for_scientific_imaging.ipynb
│   ├── 02_gradcam_and_saliency_maps.ipynb
│   ├── 03_error_analysis_for_image_models.ipynb
│   └── 04_reproducibility_and_experiment_tracking.ipynb
├── figures/
├── models/
├── results/
└── README.md
```

---

# Notebooks

| Notebook | Description |
|---|---|
| `01_model_evaluation_for_scientific_imaging.ipynb` | Evaluation of image classification models using accuracy, confusion matrices, precision, recall, F1-score, per-class metrics, and prediction confidence. |
| `02_gradcam_and_saliency_maps.ipynb` | Visual explainability using saliency maps and Grad-CAM to inspect which image regions influence model predictions. |
| `03_error_analysis_for_image_models.ipynb` | Systematic error analysis, including high-confidence errors, confusion pairs, incorrect predictions, and confidence distributions. |
| `04_reproducibility_and_experiment_tracking.ipynb` | Reproducible experiment workflows using seeds, configuration files, experiment summaries, model saving, metric tracking, and comparison tables. |

---

# Main Topics Covered

## Model Evaluation

- Accuracy
- Precision
- Recall
- F1-score
- Per-class metrics
- Confusion matrices
- Normalized confusion matrices
- Prediction-level evaluation tables

## Explainability

- Saliency maps
- Grad-CAM
- Activation-based interpretation
- Gradient-based interpretation
- Visual overlays
- Correct vs incorrect prediction explanations

## Error Analysis

- Incorrect prediction inspection
- High-confidence errors
- Errors by true class
- Errors by predicted class
- Confusion pairs
- Confidence distributions
- Manual review of ambiguous samples

## Reproducibility

- Random seed control
- Experiment configuration files
- Training history logging
- Model checkpoint saving
- Environment information
- Experiment comparison
- Best experiment selection

---

# Scientific Imaging Context

In scientific imaging, model evaluation requires more than a single performance metric.

A model with high accuracy may still fail on critical classes, rare defects, ambiguous structures, or physically meaningful regions.

This module is designed to support applied machine learning workflows in areas such as:

- microCT image analysis
- neutron imaging
- X-ray tomography
- materials characterization
- defect detection
- phase classification
- texture classification
- scientific image classification

The methods introduced here help answer questions such as:

```text
Where does the model fail?
Which classes are difficult?
Is the model confident when it is wrong?
Which regions of the image influence the prediction?
Are the results reproducible?
Which experiment produced the best result?
```

---

# Generated Outputs

The notebooks generate several types of outputs:

## Figures

Saved in:

```text
figures/
```

Examples include:

- confusion matrices
- per-class metric plots
- confidence distributions
- saliency maps
- Grad-CAM overlays
- error visualizations
- experiment comparison plots

## Models

Saved in:

```text
models/
```

Examples include:

- baseline MLP models
- CNN models used for explainability
- experiment-specific model checkpoints

## Results

Saved in:

```text
results/
```

Examples include:

- per-class metrics
- prediction-level evaluation tables
- error tables
- confusion pair tables
- experiment comparison tables
- configuration files
- experiment summaries
- environment information

---

# Why This Module Matters

Training a model is only one part of an applied machine learning workflow.

For scientific imaging applications, it is also necessary to understand:

- whether the model generalizes
- which classes are problematic
- whether errors are systematic
- whether predictions are reliable
- whether the model focuses on meaningful image regions
- whether the experiment can be reproduced

This module provides the evaluation and documentation tools required to make deep learning workflows more transparent, reliable, and scientifically useful.

---

# Libraries Used

- PyTorch
- NumPy
- pandas
- Matplotlib
- scikit-learn

---

# Author

Peter Zabala Medina  
Physicist | Scientific Imaging Researcher | Applied Machine Learning
