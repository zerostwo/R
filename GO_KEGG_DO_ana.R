#############################################
# Data 2018-09-21
# Author Sinclair Duan
# test GO analysis and KEGG pathway analysis
#############################################

# Tophat2 -> Cufflinks -> Cuffdiff -> R

# Enrichment Analysis
# GO
# KEGG
# OD
# database (out of date)

# What is Gene Ontology (GO?
# 1. Celluar component, CC
# 2. Biological process, BP
# 3. Molecular function, MF
# So we will have a gene annotation information

# 1. RNA-Seq ctrl, treatment ctrl gene expression distribution treatment gene expression distribution ctrl
# v. s. treatment -> DEG (differential expression genes)

# II. DEG -> GO annotation
# 1. Celluar component, CC
# 2. Biological process, BP
# 3. Molecular function, MF

# How to test if the GO is enriched?
# GO enrichment analysis

# model orgnism -> full annotated database
# non-model orgnism -> search database

# KEGG enrichment analysis?
# DO enrichment analysis?

# Old
# 1. RNA-Seq fastq -> BAM(tophat2, hisat, star...)
# 2. cufflink BAM
# 3. cuffdiff BAM GTE

# New
# 1. load cuffdiff result
