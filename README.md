# IPCA
# Language: R
# Input: TXT
# Output: CSV
# Tested with: PluMA 1.0, R 4.0

PluMA plugin to perform Independent Principle Component Analysis (Yao et al, 2012).

The plugin accepts as input a TXT file of parameters, tab-delimited:
data: The dataset
metadata: Sample quantities, for graph labeling
numcomponents: The number of principle components to detect
metadatalabelcolumn: The column of the metadata to use for sample labeling.

It will then output a CSV file of the principle components, and in addition
a plot illustrating each sample along its principle components (in Rplots.pdf).

Note: The attached example uses the liver.toxicity dataset from the mixOmics package,
which has been exported to CSV.  IPCA is a part of the mixOmics library (Rohart et al, 2017).
