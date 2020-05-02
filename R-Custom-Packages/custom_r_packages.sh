#!/bin/bash -xe

sudo yum update -y
sudo yum install -y R libcurl-devel openssl-devel libxml2-devel

# Installing these packages from CRAN repo
sudo R -e "install.packages(c('reticulate', 'readr', 'curl', 'ggplot2', 'dplyr', 'stringr'), repos = 'http://cran.rstudio.com')"
sudo R -e "install.packages('remotes')"
sudo R -e "install.packages(c('bitops', 'BSDA', 'cluster', 'ClusterR', 'data.table', 'devtools', 'dplyr', 'e1071', 'fastnet'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('FNN', 'forcats', 'formatR', 'gam', 'gbm', 'gdata','ggplot2','glmnet','gtools','haven', 'highr'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('Hmisc', 'htmltools', 'ipred', 'jsonlite', 'kernlab', 'lars', 'lattice', 'lubridate', 'markdown'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('MASS', 'mime', 'mlbench', 'MVar', 'neuralnet', 'nnet', 'nnls', 'openxlsx', 'packrat', 'plotrix'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('polspline', 'pwr', 'randomForest', 'randomForestSRC', 'readxl', 'rentrez', 'reshape2', 'rmarkdown'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('ROCR', 'rpivotTable', 'rpivotTable', 'sampling', 'staTools', 'stringr', 'sylly', 'testthat', 'textmineR'),repo = 'http://cran.rstudio.com')"
sudo R -e "install.packages(c('tidyr', 'tree', 'tsModel', 'XML'),repo = 'http://cran.rstudio.com')"

# Install with dependencies
sudo R -e "install.packages('xgboost', dependencies = TRUE)"

# Install packages without specifying repo
sudo R -e "install.packages(c('RPostgreSQL', 'shiny', 'sqldf'))"

## Installing from the source, update the version as needed
# ggdag
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/ggdag_0.2.2.tgz',repos = NULL, type='source')"
# implyr
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/implyr_0.3.0.tgz',repos = NULL, type='source')"
# janitor
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/janitor_2.0.1.tgz',repos = NULL, type='source')"
# knitr
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/knitr_1.28.tgz',repos = NULL, type='source')"
#= plotly
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/plotly_4.9.2.1.tgz',repos = NULL, type='source')"
# pROC
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/pROC_1.16.2.tgz',repos = NULL, type='source')"
# SuperLearner
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/SuperLearner_2.0-26.tgz',repos=NULL, type='source')"

## MVN
# First install these
sudo R -e "install.packages(c('kableExtra','car','energy', 'moments','mvoutlier'), repos='https://cloud.r-project.org/')"
sudo R -e "install.packages(c('nortest', 'psych'), dependencies = TRUE)"
# Thesn install MVN from the source
sudo R -e "install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/MVN_5.8.tgz',repos = NULL, type='source', depenencies=TRUE)"

# Restart Jypyter Server
echo "Restarting the Jupyter server.."
restart jupyter-server

## Install darch from github
sudo R -e "remotes::install_github('maddin79/darch', force = TRUE)"

## Install ck37r from github
sudo R -e "remotes::install_github('ck37/ck37r', force = TRUE)"
