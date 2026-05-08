# AD-Transcriptome-Visualization
Visualization plots (PCA, Volcano, Heatmap) for Alzheimer blood transcriptome datasets (GSE270454)

# PCA Analysis (DESeq2)

This folder contains Principal Component Analysis (PCA) visualization performed using DESeq2 normalized expression data for the GSE270454 dataset.

## Dataset
**GSE270454**  
Groups included: **AD, MCI, ASM, ASO**

## Objective
To reduce the dimensionality of gene expression data and visualize how samples cluster based on their biological condition.

## Methodology
- Variance Stabilizing Transformation (VST) was applied using DESeq2.
- PCA was performed on transformed expression values.
- Samples were colored based on the `condition` column to observe separation between groups.

## Files
- `pca_analysis.R` → R script used to generate the PCA plot
- `PCA_GSE270454_AllGroups.png` → output PCA visualization
- `README.md` → description of PCA analysis

## Output
The PCA plot shows clustering patterns of samples across AD, MCI, ASM, and ASO groups, helping identify overall similarity/differences between sample conditions.

## Tools Used
- R
- DESeq2
- ggplot2
