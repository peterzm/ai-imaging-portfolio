# 05 · Deep Learning for Image Classification

A comprehensive study of deep learning techniques for image classification, progressing from convolutional network fundamentals to transfer learning, model interpretability, and small-dataset strategies. All experiments are conducted on CIFAR-10 and MNIST using TensorFlow/Keras.

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

> EfficientNetB0 achieves **93.1% accuracy** on CIFAR-10 with fine-tuning, and retains **87.3% accuracy** when trained on only 10% of the dataset — demonstrating the effectiveness of transfer learning under data scarcity.

---

## Notebooks

| # | Notebook | Topics |
|---|---|---|
| 01 | `01_convolutional_neural_networks` | CNN fundamentals, convolution, pooling, receptive field |
| 02 | `02_first_cnn_on_mnist` | First CNN implementation, training loop, evaluation |
| 03 | `03_cnn_feature_maps_visualization` | Intermediate activations, filter visualization |
| 04 | `04_cnn_vs_classical_features` | CNN vs HOG/SIFT, deep vs handcrafted features |
| 05 | `05_data_augmentation_for_images` | Flip, rotation, zoom, brightness, contrast |
| 06 | `06_regularization_dropout_batchnorm` | Dropout, Batch Normalization, L2 regularization |
| 07 | `07_overfitting_underfitting_in_cnns` | Bias-variance tradeoff, learning curves, diagnosis |
| 08 | `08_optimizer_comparison` | SGD, Adam, RMSprop — convergence and stability |
| 09 | `09_classic_architectures_lenet_vgg_resnet` | LeNet, VGG, ResNet — architecture evolution |
| 10 | `10_transfer_learning_fundamentals` | ImageNet pretraining, domain adaptation |
| 11 | `11_feature_extraction_vs_finetuning` | Frozen vs unfrozen layers, MobileNetV2 on CIFAR-10 |
| 12 | `12_finetuning_pretrained_cnn` | EfficientNetB0, ResNet50 — architecture comparison |
| 13 | `13_model_evaluation_confusion_analysis` | Per-class F1, confusion matrices, error patterns |
| 14 | `14_gradcam_and_interpretability` | Grad-CAM implementation, activation analysis |
| 15 | `15_small_dataset_strategy_synthetic_images` | Augmentation strategies, Mixup, data scarcity |

---

## Key Findings

**Transfer learning dominates**
MobileNetV2 with feature extraction (86.5%) outperforms a custom CNN trained from scratch (~72%) while requiring significantly less compute. Fine-tuning pushes EfficientNetB0 to 93.1%.

**Architecture efficiency matters**
EfficientNetB0 (5.3M parameters, 93.1%) outperforms ResNet50 (25.6M parameters, 92.5%) at half the training time — a clear case where scale does not equal performance.

**Grad-CAM confirms semantic learning**
Activation maps show the model focuses on animal body regions for correct predictions. Misclassifications between `cat`, `dog`, and `deer` are driven by ambiguous poses and low-resolution features — not spurious correlations.

**Transfer learning is robust under data scarcity**
With only 500 images per class (10% of CIFAR-10), EfficientNetB0 fine-tuned to 87.3% — just 5.8 points below the full-dataset result. Aggressive augmentation added marginal gains; Mixup slightly hurt performance at this scale.

**Hardest classes: cat and dog**
Consistent across all three architectures. F1-score for `cat` ranges from 0.80 (MobileNetV2) to 0.86 (EfficientNetB0), driven by shared visual features at 32×32 resolution.

---

## Technical Stack

- **Framework:** TensorFlow / Keras 3.14
- **Language:** Python 3.x
- **Pretrained models:** MobileNetV2, EfficientNetB0, ResNet50 (ImageNet weights)
- **Datasets:** MNIST, CIFAR-10
- **Key libraries:** NumPy, Matplotlib, Seaborn, scikit-learn, OpenCV

---

## Saved Models

Trained model weights are not included in this repository due to GitHub's 100MB file size limit. To reproduce all models, run the notebooks in order.

| Notebook | Model file | Size |
|---|---|---|
| 10 | `10_mobilenetv2_feature_extraction.keras` | ~14 MB |
| 11 | `11_mobilenetv2_finetuned.keras` | ~26 MB |
| 12 | `12_efficientnetb0_finetuned.keras` | ~51 MB |
| 12 | `12_resnet50_finetuned.keras` | ~245 MB · hosted on [Google Drive](https://drive.google.com/file/d/1jJ08iFHzA0Ret59PL5Tf3AkgJA3ru5Ls/view?usp=sharing) |
| 15 | `15_*.keras` | ~51 MB each |

---

## Project Structure

```
05_deep_learning_classification/
├── notebooks/          # 15 Jupyter notebooks
├── models/             # Saved .keras weights (git-ignored > 100MB)
├── figures/            # Training curves, confusion matrices, Grad-CAM maps
├── data/               # Auto-downloaded datasets (MNIST, CIFAR-10)
└── requirements.txt
```
