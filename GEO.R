# Method 1
a = read.table('GSE42872_series_matrix.txt.gz', sep = '\t', quote = "", fill = T, comment.char = "!", header = T)
rownames(a) = a[,1]
a = a[,-1]
# Method 2
library('GEOquery')
gset = getGEO('GSE42872',destdir = ".", AnnotGPL = F, getGPL = F)
b = exprs(gset[[1]])
 