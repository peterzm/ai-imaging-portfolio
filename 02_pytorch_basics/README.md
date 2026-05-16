# 02 · PyTorch Basics

This module introduces the fundamentals of PyTorch for scientific image analysis and deep learning workflows.

The objective is to build a solid understanding of tensors, automatic differentiation, neural networks, and training pipelines before moving toward more advanced computer vision and volumetric deep learning projects.

The notebooks are designed with a strong focus on:

- scientific computing
- image analysis
- reproducibility
- reusable training structures
- practical deep learning workflows

---

# Module Structure

```text
02_pytorch_basics/
├── notebooks/
├── figures/
├── models/
├── data/
│   ├── synthetic/
│   └── augmented/
└── README.md
```

---

# Notebooks

| Notebook | Description |
|---|---|
| `01_pytorch_tensor_basics.ipynb` | Basics of tensors, shapes, dtype, device management, broadcasting, NumPy interoperability, and automatic differentiation (`autograd`). |
| `02_linear_models_in_pytorch.ipynb` | First trainable model in PyTorch using linear regression, loss functions, optimizers, and gradient descent. |
| `03_mlp_for_digits.ipynb` | Multi-Layer Perceptron (MLP) for handwritten digit classification using the `digits` dataset from scikit-learn. |
| `04_training_loop_basics.ipynb` | Reusable training and evaluation loops, validation pipelines, metric tracking, model saving/loading, and professional PyTorch workflow organization. |

---

# Main Topics Covered

## Tensor Fundamentals

- Tensor creation
- Shapes and dimensions
- Data types (`dtype`)
- Device management (`cpu` / `cuda`)
- Tensor operations
- Reshaping and broadcasting

## Automatic Differentiation

- Computational graphs
- Gradient calculation
- `backward()`
- Gradient accumulation

## Neural Networks

- `nn.Module`
- `nn.Linear`
- Activation functions
- Multi-Layer Perceptrons (MLP)

## Training Pipelines

- Loss functions
- Optimizers
- Training loops
- Validation loops
- Accuracy metrics
- Confusion matrices

## Data Handling

- TensorDataset
- DataLoader
- Batch processing
- Train / validation / test splits

---

# Libraries Used

- PyTorch
- NumPy
- Matplotlib
- scikit-learn

---

# Scientific Imaging Context

Although the examples use small educational datasets, the concepts introduced here are directly transferable to scientific imaging applications such as:

- microCT analysis
- neutron imaging
- tomography
- volumetric datasets
- segmentation workflows
- 3D deep learning models

This module serves as the PyTorch foundation for future projects involving:

- CNNs
- transfer learning
- semantic segmentation
- 3D U-Net architectures
- scientific image classification

---

# Results

The notebooks demonstrate:

- successful tensor manipulation
- automatic gradient computation
- linear regression training
- MLP classification with high accuracy
- reusable training pipelines
- model persistence using `.pt` files

The final classification models achieve high accuracy on the handwritten digits dataset while maintaining clean and reproducible PyTorch workflows.

---

# Author

Peter Zabala Medina  
Physicist | Scientific Imaging Researcher | Applied Machine Learning

