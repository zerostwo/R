# 第一步 下载R包
bioPackages <-c( 
  "stringi",  # 处理字符串
  "GEOquery", # 下载GEO数据
  "limma",    # 差异分析
  "ggfortify", "ggplot2", "pheatmap", "ggstatsplot", "VennDiagram", # 作图
  "clusterProfiler", "org.Hs.eg.db"                                 # 注释
)


## 设置软件包的下载镜像
local({
  
  # CRAN的镜像设置
  r <- getOption( "repos" ); 
  r[ "CRAN" ] <- "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"; 
  options( repos = r )
  # bioconductor的镜像设置
  BioC <- getOption( "BioC_mirror" ); 
  BioC[ "BioC_mirror" ] <- "https://mirrors.ustc.edu.cn/bioc/"; 
  options( BioC_mirror = BioC )
})

## 安装未安装的软件包
source( "https://bioconductor.org/biocLite.R" ) #第一次使用bioconductor需要运行
lapply( bioPackages, 
        function( bioPackage ){
          if( !require( bioPackage, character.only = T ) ){
            CRANpackages <- available.packages()
            if( bioPackage %in% rownames( CRANpackages) ){
              install.packages( bioPackage )
            }else{
              BiocInstaller::biocLite( bioPackage, suppressUpdates = FALSE, ask = FALSE)
            }
          }
        }
)