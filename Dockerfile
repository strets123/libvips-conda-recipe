FROM continuumio/miniconda3:latest

RUN conda install conda-build
COPY .condarc /root/.condarc
RUN conda config --add channels cdeepakroy
COPY . /recipe
WORKDIR /recipe
RUN conda build libvips
