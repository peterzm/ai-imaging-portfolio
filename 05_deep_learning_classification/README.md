# 05 · Deep Learning Classification

This module focuses on deep learning workflows for image classification, from CNN fundamentals to transfer learning, fine-tuning, interpretability, and small-dataset strategies.

The goal is to demonstrate practical model development skills using TensorFlow/Keras, with emphasis on reproducible experiments, model comparison, evaluation, and strategies that are relevant to applied computer vision and scientific imaging.

Experiments are conducted mainly on MNIST and CIFAR-10, using both custom CNNs and pretrained architectures.

---

## Results at a Glance

| Model | Strategy | Test Accuracy |
|---|---|---|
| Custom CNN | Trained from scratch | ~72% |
| MobileNetV2 | Feature extraction | 86.5% |
| MobileNetV2 | Fine-tuning | 90.0% |
| ResNet50 | Fine-tuning | 92.5% |
| **EfficientNetB0** | **Fine-tuning** | **93.1%** |
| EfficientNetB0 | Fine-tuning · 500 images/class | 87.3% |

EfficientNetB0 achieved the best full-dataset performance, reaching **93.1% test accuracy** on CIFAR-10 after fine-tuning.

When trained with only **500 images per class** (approximately 10% of CIFAR-10), EfficientNetB0 still reached **87.3% accuracy**, showing the value of transfer learning under data scarcity.

---

## Module Focus

This section demonstrates how to build, train, evaluate, and compare deep learning models for image classification.

The notebooks cover:

- CNN fundamentals
- convolution, pooling, and feature maps
- custom CNN training
- data augmentation
- regularization and overfitting diagnosis
- optimizer comparison
- classic CNN architectures
- transfer learning
- feature extraction vs fine-tuning
- pretrained model comparison
- model evaluation and confusion analysis
- Grad-CAM and interpretability
- small-dataset strategies using augmentation and Mixup

---

## Module Structure

```text
05_deep_learning_classification/
├── notebooks/
├── figures/
├── models/
├── data/
├── requirements.txt
└── README.md
```

---

## Notebooks

| # | Notebook | Focus |
|---|---|---|
| 01 | `01_convolutional_neural_networks.ipynb` | CNN fundamentals, convolution, pooling, receptive fields, and image feature learning. |
| 02 | `02_first_cnn_on_mnist.ipynb` | Custom CNN implementation, training workflow, and evaluation on MNIST. |
| 03 | `03_cnn_feature_maps_visualization.ipynb` | Intermediate activations, feature maps, and visual inspection of learned representations. |
| 04 | `04_cnn_vs_classical_features.ipynb` | Comparison between CNN-based features and handcrafted descriptors such as HOG/SIFT. |
| 05 | `05_data_augmentation_for_images.ipynb` | Image augmentation using flips, rotations, zoom, brightness, contrast, and geometric variation. |
| 06 | `06_regularization_dropout_batchnorm.ipynb` | Dropout, Batch Normalization, L2 regularization, and generalization control. |
| 07 | `07_overfitting_underfitting_in_cnns.ipynb` | Bias-variance tradeoff, learning curves, overfitting diagnosis, and model capacity analysis. |
| 08 | `08_optimizer_comparison.ipynb` | Comparison of SGD, Adam, and RMSprop in terms of convergence and stability. |
| 09 | `09_classic_architectures_lenet_vgg_resnet.ipynb` | LeNet, VGG, ResNet, and the evolution of CNN architectures. |
| 10 | `10_transfer_learning_fundamentals.ipynb` | ImageNet pretraining, domain adaptation, and transfer learning workflows. |
| 11 | `11_feature_extraction_vs_finetuning.ipynb` | Frozen feature extraction vs fine-tuning using MobileNetV2 on CIFAR-10. |
| 12 | `12_finetuning_pretrained_cnn.ipynb` | Fine-tuning EfficientNetB0 and ResNet50, architecture comparison, and performance analysis. |
| 13 | `13_model_evaluation_confusion_analysis.ipynb` | Per-class F1-score, confusion matrices, class-level errors, and model comparison. |
| 14 | `14_gradcam_and_interpretability.ipynb` | Grad-CAM, activation maps, interpretability, and inspection of correct and incorrect predictions. |
| 15 | `15_small_dataset_strategy_synthetic_images.ipynb` | Small-dataset training, aggressive augmentation, Mixup, and data scarcity experiments. |

---

## Key Findings

### Transfer learning provides a strong performance gain

A custom CNN trained from scratch reached approximately **72% accuracy** on CIFAR-10.

MobileNetV2 used as a frozen feature extractor reached **86.5%**, showing that pretrained visual representations can significantly outperform a small model trained from scratch.

Fine-tuning further improved performance, with EfficientNetB0 reaching **93.1%**.

---

### Architecture efficiency matters

EfficientNetB0 achieved the best performance among the tested pretrained models.

It reached **93.1% accuracy** while using fewer parameters and less training time than ResNet50, which reached **92.5%**.

This result shows that larger architectures are not always better. Efficient architecture design can provide stronger performance with lower computational cost.

---

### Fine-tuning improves domain adaptation

Feature extraction is useful when computational resources or data are limited, but fine-tuning allows the model to adapt more strongly to the target dataset.

The experiments show a clear progression:

```text
Custom CNN
↓
Pretrained feature extraction
↓
Fine-tuning
↓
Improved generalization
```

---

### Evaluation must go beyond accuracy

Confusion matrices and per-class metrics show that some classes remain consistently harder than others.

The most difficult CIFAR-10 classes were:

- `cat`
- `dog`
- `deer`

These classes share visual features at low image resolution, which explains part of the confusion pattern.

---

### Grad-CAM supports model inspection

Grad-CAM visualizations showed that correct predictions often focus on meaningful object regions.

Misclassifications between visually similar classes, such as `cat`, `dog`, and `deer`, were often associated with ambiguous poses, low resolution, or shared texture patterns.

This reinforces the need to combine quantitative metrics with visual inspection.

---

### Transfer learning remains effective with limited data

EfficientNetB0 fine-tuned on only **500 images per class** reached **87.3% accuracy**.

This was only **5.8 percentage points below** the full-dataset EfficientNetB0 result.

This is an important result for scientific imaging, where labeled datasets are often small, expensive, or difficult to obtain.

---

## Scientific Imaging Relevance

Although this module uses MNIST and CIFAR-10 as benchmark datasets, the workflows are directly relevant to applied scientific imaging problems.

The methods demonstrated here can support future projects involving:

- classification of scientific images
- microCT slice classification
- materials image classification
- texture-based image analysis
- defect detection
- small labeled datasets
- transfer learning for specialized imaging domains
- model evaluation and interpretation

Scientific imaging often faces limited labeled data, high annotation cost, class imbalance, and domain-specific visual patterns. This makes transfer learning, augmentation, evaluation, and interpretability especially important.

---

## Technical Stack

- Python
- TensorFlow / Keras
- NumPy
- Matplotlib
- Seaborn
- scikit-learn
- OpenCV

Pretrained models used:

- MobileNetV2
- EfficientNetB0
- ResNet50

Datasets used:

- MNIST
- CIFAR-10

---

## Saved Models

Trained model weights are not included in this repository when they exceed GitHub file size limits.

To reproduce the models, run the notebooks in order.

| Notebook | Model file | Notes |
|---|---|---|
| 10 | `10_mobilenetv2_feature_extraction.keras` | MobileNetV2 feature extraction model |
| 11 | `11_mobilenetv2_finetuned.keras` | Fine-tuned MobileNetV2 |
| 12 | `12_efficientnetb0_finetuned.keras` | Fine-tuned EfficientNetB0 |
| 12 | `12_resnet50_finetuned.keras` | Fine-tuned ResNet50; large file, hosted externally |
| 15 | `15_*.keras` | Small-dataset strategy experiments |

Large model files are excluded from Git when necessary due to GitHub's 100 MB file size limit.

---

## Generated Outputs

The notebooks generate outputs such as:

- training and validation curves
- confusion matrices
- class-level metrics
- model comparison plots
- feature map visualizations
- Grad-CAM maps
- small-dataset performance comparisons
- saved `.keras` models

Outputs are mainly saved in:

```text
figures/
models/
```

---

## Connection to the Portfolio

This module connects the earlier image processing and segmentation work with modern deep learning workflows.

It supports later and parallel sections of the repository:

- `03_computer_vision` provides classical feature extraction and image processing foundations.
- `04_segmentation` provides object and region-based image analysis workflows.
- `06_explainability_and_evaluation` expands model evaluation, error analysis, Grad-CAM, saliency maps, and reproducibility.
- `projects/` applies these methods to scientific imaging case studies.

---

## Why This Module Matters

This section demonstrates more than model training.

It shows how to:

- compare architectures
- diagnose overfitting
- use pretrained models
- fine-tune CNNs
- evaluate models by class
- interpret model predictions
- work under data scarcity
- connect benchmark experiments to applied imaging problems

These skills are essential for applied computer vision roles where models must be selected, evaluated, interpreted, and adapted to real-world datasets.

---

## Author

Peter Zabala Medina, PhD  
Physicist | Scientific Imaging Researcher | Applied Machine Learning  
Scientific Imaging • Computer Vision • Tomography • Machine Learning
