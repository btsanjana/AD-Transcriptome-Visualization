# ==============================
# PCA Analysis using DESeq2
# Dataset: GSE270454
# Groups: AD vs MCI vs ASM vs ASO
# ==============================

# Load required libraries
library(DESeq2)
library(ggplot2)

# ------------------------------
# 1. Variance Stabilizing Transformation
# ------------------------------
vsd <- vst(dds, blind = FALSE)

# ------------------------------
# 2. PCA Plot Generation
# ------------------------------
p_pca <- plotPCA(vsd, intgroup = "condition") +
  ggtitle("PCA Plot (GSE270454: AD vs MCI vs ASM vs ASO)") +
  theme_minimal(base_size = 14)

# Display plot
print(p_pca)

# ------------------------------
# 3. Save PCA Plot
# ------------------------------
output_file <- "PCA_GSE270454_AllGroups.png"

ggsave(
  filename = output_file,
  plot = p_pca,
  width = 7,
  height = 5,
  dpi = 300
)

# Check file size (verification)
file.info(output_file)$size

# ------------------------------
# 4. Working Directory Check (optional)
# ------------------------------
getwd()

# ==============================
# End of PCA Script
# ==============================
