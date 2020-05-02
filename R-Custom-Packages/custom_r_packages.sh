#!/bin/bash -xe

sudo yum update -y
sudo yum install -y R libcurl-devel openssl-devel libxml2-devel
sudo pip install sagemaker boto3
sudo R -e "install.packages(c('reticulate', 'readr', 'curl', 'ggplot2', 'dplyr', 'stringr'), repos = 'http://cran.rstudio.com')"
