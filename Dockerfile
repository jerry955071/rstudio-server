FROM rocker/rstudio:4.2.2

# install packages
RUN Rscript -e "install.packages(c('magrittr'));"
