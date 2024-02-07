conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels rschauner
conda config --add channels bioconda
#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/
#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/

echo "options(BioC_mirror='https://mirrors.tuna.tsinghua.edu.cn/bioconductor')" >> ~/.Rprofile
echo "options('repos' = c(CRAN='https://mirrors.tuna.tsinghua.edu.cn/CRAN/'))" >> ~/.Rprofile

conda install -y -c conda-forge r-curl
conda install -y -c conda-forge r-biocmanager
conda install -y -c bioconda bioconductor-deseq2
conda install -y -c conda-forge r-devtools
conda install -y -c conda-forge r-ggplot2
conda install -y -c conda-forge r-dplyr
conda install -y -c rschauner r-bpcells
conda install -y -c bioconda bioconductor-glmgampoi
conda install -y -c conda-forge r-rjson
conda install -y -c conda-forge r-viridis
conda install -y -c conda-forge r-reticulate
conda install -y -c conda-forge r-cowplot
conda install -y -c conda-forge r-reshape2
conda install -y -c conda-forge r-ggsci
conda install -y -c conda-forge r-rcolorbrewer
conda install -y -c conda-forge r-patchwork
conda install -y -c conda-forge r-pheatmap
conda install -y -c conda-forge r-ggpubr
conda install -y -c conda-forge r-ggalluvial
conda install -y -c bioconda r-harmony
conda install -y -c conda-forge r-configr
conda install -y -c conda-forge r-scales
conda install -y -c conda-forge r-gridextra
conda install -y -c bioconda bioconductor-org.hs.eg.db
conda install -y -c bioconda bioconductor-org.mm.eg.db
conda install -y -c bioconda bioconductor-reactomepa
conda install -y -c conda-forge r-msigdbr
conda install -y -c bioconda bioconductor-dose
conda install -y -c bioconda bioconductor-enrichplot
conda install -y -c bioconda bioconductor-degseq
conda install -y -c bioconda bioconductor-limma
conda install -y -c bioconda bioconductor-gsva
conda install -y -c bioconda bioconductor-complexheatmap
conda install -y -c bioconda bioconductor-clusterprofiler
conda install -y -c bioconda bioconductor-ucell
conda install -y -c bioconda bioconductor-aucell
