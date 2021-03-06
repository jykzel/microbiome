# Use this script to generate the example data sets
# for the package

source("download.R")

# Download the required R packages and then the HITChip Atlas data set
library("rdryad")
library("microbiome")
pseq <- download_microbiome("atlas1006", "phyloseq")
atlas1006 = pseq
save(atlas1006, file = "../../data/atlas1006.rda")

# -------------------------------------------------------

library(microbiome)
dietswap <- download_microbiome("dietswap")
save(dietswap, file = "../../data/dietswap.rda")

# ----------------------------------------------

library(microbiome)
data.peerj32 <- download_microbiome("peerj32")
peerj32 = data.peerj32
save(peerj32, file = "../../data/peerj32.rda")
