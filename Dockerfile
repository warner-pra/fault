FROM  rocker/verse

WORKDIR /home/rstudio
COPY . fault
WORKDIR /home/rstudio/fault

RUN install2.r --error --skipinstalled languageserver ; \
    Rscript -e 'devtools::install_github("jordagaman/zddr")'

# RUN Rscript -e 'library(devtools); build(vignettes = FALSE); install(upgrade = FALSE)'