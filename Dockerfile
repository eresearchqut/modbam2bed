FROM continuumio/miniconda3:4.12.0

LABEL software="modbam2bed"
LABEL software.version="0.6.2"
LABEL about.home="https://github.com/epi2me-labs/modbam2bed"
LABEL org.opencontainers.image.authors="c.windell@qut.edu.au"

RUN conda install mamba -n base -c conda-forge

RUN mamba install modbam2bed==0.6.2 -c bioconda -c conda-forge -c epi2melabs

