# Project 01 — Mortar Porosity Analysis

Quantitative analysis of porosity in cement mortar using X-ray microCT imaging.
This project implements a complete 2D segmentation pipeline to separate and
characterize three phases: pores, resin, and cement matrix.

---

## Scientific Context

Understanding porosity in cement mortar is critical for assessing mechanical
strength, durability, and permeability in construction materials. X-ray
microCT allows non-destructive 3D imaging of the internal microstructure
at micrometer resolution.

This analysis focuses on a single 2D cross-section. The pipeline is designed
to scale to full 3D volumetric analysis (see Project 02).

---

## Acquisition Parameters

| Parameter  | Value         |
|------------|---------------|
| Equipment  | Nikon XT H 225|
| Energy     | 150 kV        |
| Pixel size | 20 µm         |
| Material   | Cement mortar |

---

## Pipeline

Raw image (uint16 TIFF)
↓
Normalization (uint16 → float32)
↓
Noise evaluation + median filtering
↓
Multi-level Otsu thresholding (3 phases)
↓
Circular ROI detection (sample vs background)
↓
Morphological cleaning (opening + closing)
↓
Region analysis + physical unit conversion
↓
Quantitative results + figures

---

## Results

| Metric                    | Value      |
|---------------------------|------------|
| Analyzed area             | 357.2 mm²  |
| Total porosity            | 1.37 %     |
| Resin fraction            | 18.40 %    |
| Cement matrix fraction    | 80.23 %    |

### Pores

| Metric                    | Value      |
|---------------------------|------------|
| Pores detected            | 69         |
| Mean equivalent diameter  | 188.4 µm   |
| Median equivalent diameter| 137.3 µm   |
| Maximum diameter          | 1503.9 µm  |
| Mean circularity          | 0.950      |

### Resin

| Metric                    | Value      |
|---------------------------|------------|
| Regions detected          | 1,687      |
| Mean equivalent diameter  | 187.0 µm   |
| Median equivalent diameter| 168.9 µm   |
| Maximum diameter          | 782.7 µm   |
| Mean circularity          | 0.858      |

---

## Output Figures

| Figure | Description |
|--------|-------------|
| `01_exploracion_imagen.png` | Raw image and intensity histogram |
| `02_comparacion_filtros.png` | Filter comparison (none / gaussian / median) |
| `02_histogramas_filtrado.png` | Histogram comparison across filters |
| `03_umbrales_manuales.png` | Manual threshold exploration |
| `03_segmentacion_fases.png` | Otsu multi-level segmentation |
| `04_roi_y_limpieza.png` | ROI detection and morphological cleaning |
| `05_distribucion_tamano_fases.png` | Pore and resin size distribution |
| `05_circularidad_poros.png` | Circularity distribution |
| `05_resumen_final.png` | **Final summary figure** |

---

## Project Structure

01_mortar_porosity_analysis/
├── data/
│   └── raw/          # Muestra01.tif file
├── notebooks/
│   └── 01_mortar_porosity_analysis.ipynb
├── figures/          # All generated visualizations
└── results/
├── pore_analysis.csv
├── resin_analysis.csv
└── summary_report.json

---

## Dependencies

numpy
tifffile
matplotlib
scikit-image
scikit-learn
scipy
pandas

---

## Next Steps

This pipeline is designed to scale to full 3D volumetric analysis.
**Project 02** will apply this same pipeline slice-by-slice across
the complete tomographic volume using batch processing, generating
porosity as a function of depth and full 3D pore size distributions.

---

Author: Peter Zabala Medina, PhD  
Equipment: Nikon XT H 225