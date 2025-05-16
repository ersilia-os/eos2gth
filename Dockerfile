FROM bentoml/model-server:0.11.0-py39
MAINTAINER ersilia
RUN conda install -c conda-forge libgomp=15.1.0
RUN pip install rdkit==2023.9.5
RUN pip install flaml==0.6.9
RUN pip install lightgbm==2.3.1
RUN pip install numpy==1.26.0

WORKDIR /repo
COPY . /repo
