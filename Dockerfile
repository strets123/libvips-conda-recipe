FROM continuumio/miniconda3:latest
RUN  apt-get install -y build-essential gcc g++ pkg-config
RUN conda install -c https://s3-eu-west-1.amazonaws.com/conda.zegami.com gobject-introspection=1.47.1=3
RUN conda install conda-build
COPY .condarc /root/.condarc
RUN conda config --add channels cdeepakroy
COPY . /recipe
WORKDIR /recipe

RUN conda build libvips
