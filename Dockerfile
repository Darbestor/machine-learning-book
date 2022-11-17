FROM continuumio/miniconda3:4.12.0

RUN apt update && apt install apt-utils
RUN apt-get update && apt-get upgrade -y

RUN conda update -y conda && \ 
    conda install -y -c defaults -c conda-forge \
    python=3.9 numpy=1.21.2 scipy=1.7.0 scikit-learn=1.0 \ 
    matplotlib=3.4.3 pandas=1.3.2 jupyter
