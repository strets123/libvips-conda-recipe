FROM continuumio/miniconda3:latest

RUN conda install conda-build
RUN conda config --add channels zegami
RUN conda config --add channels cdeepakroy
COPY . /recipe
WORKDIR /recipe
RUN conda build libvips
