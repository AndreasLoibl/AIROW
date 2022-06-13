#! /usr/bin/env Rscript
# chmod 755 this script

# script to update shiny-server
# havent't figured out how to install repos for CRAN, so point to it as argument

# 1. install app dependencies

#dependecies <- c("shinyMobile", "shinyWidgets")

#for (pkg in dependecies) {

#  if (!(pkg %in% installed.packages())) {
#    install.packages(pkg, repos='https://cran.r-project.org')
#  }

#}

# 2. install app

# for devtools CENTOS: yum install libcurl libcurl-devel
# for AWS
                                        openssl-devel


#install.packages(c('curl','shiny', 'devtools'), repos='https://cran.r-project.org')
# !!!! bash# rm -rf /usr/lib64/R/library/00LOCK-brio

require("devtools")

devtools::install_github( repo = "kulmak/AIROW.demo",
                          force = TRUE
)

# 3. run app, this step should be executed every time user accesses the server

##AIROW.demo::run_app()
AIROW.demo::run_app(options = list(port = 3752))
