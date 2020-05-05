## Sample Code for Installing R Packages from Different Sources

## Script: Nick Minaie
## Github: https://github.com/nickminaie/AWS-SageMaker-R-Workshop
## Date: May 5, 2020


### Conda Installs, This will take a while, please be patient
### -----------------------------------------------------------------

## Conda-Forge Channel
system("conda install -n R -c conda-forge r-gdata r-gtools r-hmisc r-kernlab r-lars")
system("conda install -n R -c conda-forge r-bitops r-e1071 r-gam r-gbm r-fnn r-devtools")
system("conda install -n R -c conda-forge r-mlbench r-neuralnet r-nnls r-openxlsx")
system("conda install -n R -c conda-forge r-packrat r-plotrix r-polspline r-pwr")
system("conda install -n R -c conda-forge r-randomforestsrc r-rentrez r-rocr r-rpivottable")
system("conda install -n R -c conda-forge r-sampling r-sylly r-testthat r-tree r-xml r-plotly")
system("conda install -n R -c conda-forge r-rpostgresql r-proc r-janitor r-hmisc")
system("conda install -n R -c conda-forge r-superlearner r-plotly r-rjava r-xgboost r-sqldf")
system("conda install -n R -c conda-forge r-odbc r-summarytools r-shiny")

## R Channel
system("conda install -n R -c r r-implyr")

### Installing from CRAN, This will take a while, please be patient
### -----------------------------------------------------------------
install.packages(c('BSDA', 'ClusterR', 'fastnet','MVar', 'staTools', 'textmineR', 'tsModel'),
                repo = 'http://cran.rstudio.com')


### Installing from the source, update the link based on OS and version as needed
### -----------------------------------------------------------------
## ggdag package
install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/ggdag_0.2.2.tgz',
                 repos = NULL, type="source")

## MVN
# First install these
install.packages(c('kableExtra','car','energy', 'moments','mvoutlier'), repos='https://cloud.r-project.org/')
install.packages(c('nortest', 'psych'), dependencies = TRUE)

# Thesn install MVN from the source
install.packages('http://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/MVN_5.8.tgz'
               ,repos = NULL, type="source", depenencies=TRUE)
