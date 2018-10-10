# Method 1
a = read.table('GSE42872_series_matrix.txt.gz', sep = '\t', quote = "", fill = T, comment.char = "!", header = T)
rownames(a) = a[,1]
a = a[,-1]
# Method 2
library('GEOquery')
gset = getGEO('GSE42872',destdir = ".", AnnotGPL = F, getGPL = F)
b = exprs(gset[[1]])
 
install.packages('psych')
library(psych)
fpkm1 <- read.table(file='RNA-Seq/lung/test/SRR1033853_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm2 <- read.table(file='RNA-Seq/lung/test/SRR1033854_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm3 <- read.table(file='RNA-Seq/lung/test/SRR1033855_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm4 <- read.table(file='RNA-Seq/lung/test/SRR1033856_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm5 <- read.table(file='RNA-Seq/lung/test/SRR1033857_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm6 <- read.table(file='RNA-Seq/lung/test/SRR1033858_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm7 <- read.table(file='RNA-Seq/lung/test/SRR1033859_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm8 <- read.table(file='RNA-Seq/lung/test/SRR1033860_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm9 <- read.table(file='RNA-Seq/lung/test/SRR1033861_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm10 <- read.table(file='RNA-Seq/lung/test/SRR1033862_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm11 <- read.table(file='RNA-Seq/lung/test/SRR1033863_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm12 <- read.table(file='RNA-Seq/lung/test/SRR1033864_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm13 <- read.table(file='RNA-Seq/lung/test/SRR1033865_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm14 <- read.table(file='RNA-Seq/lung/test/SRR1033866_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm15 <- read.table(file='RNA-Seq/lung/test/SRR1033867_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm16 <- read.table(file='RNA-Seq/lung/test/SRR1033868_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm17 <- read.table(file='RNA-Seq/lung/test/SRR1033869_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm18 <- read.table(file='RNA-Seq/lung/test/SRR1033870_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm19 <- read.table(file='RNA-Seq/lung/test/SRR1033871_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm20 <- read.table(file='RNA-Seq/lung/test/SRR1033872_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm21 <- read.table(file='RNA-Seq/lung/test/SRR1033873_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')
fpkm22 <- read.table(file='RNA-Seq/lung/test/SRR1033874_cufflink_result/genes.fpkm_tracking',header = T,sep = '\t')

library(data.table)

fpkm <- data.table(fpkm1$gene_id, fpkm1$FPKM, fpkm12$FPKM,fpkm14$FPKM,fpkm15$FPKM,fpkm16$FPKM,fpkm17$FPKM,fpkm18$FPKM,fpkm19$FPKM,fpkm2$FPKM,fpkm20$FPKM,fpkm21$FPKM,fpkm22$FPKM,fpkm3$FPKM,fpkm4$FPKM,fpkm7$FPKM,fpkm8$FPKM)
name = c('gene_id','fpkm1','fpkm12','fpkm14','fpkm15','fpkm16','fpkm17','fpkm18','fpkm19','fpkm20','fpkm21','fpkm22','fpkm3','fpkm3','fpkm4','fpkm7','fpkm8')
names(fpkm) <- name
dim(fpkm)
input_mat <- fpkm[,2:17]
dim(input_mat)
pca_result = principal(input_mat,nfactors = 3)
pca_result$scores
pca_result$values
pca_result$weights

plot(pca_result$scores[,1],pca_result$scores[,2],xlim = c(0,50),ylim = c(0,50))
plot(pca_result$scores[,2],pca_result$scores[,3],xlim = c(0,50),ylim = c(0,50))
plot(pca_result$scores[,1],pca_result$scores[,3],xlim = c(0,50),ylim = c(0,50))

table(fpkm$fpkm1 > 0)
