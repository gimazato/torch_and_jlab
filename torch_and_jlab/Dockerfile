FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

RUN apt-get update && apt-get install -y --no-install-recommends \
        wget \
        vim && \
    rm -rf /var/lib/apt/lists/*

RUN conda install -y -c conda-forge jupyterlab nodejs==14.3.0 && \
    conda clean -ya

WORKDIR /workspace
RUN chmod -R a+w .