# From https://betterprogramming.pub/how-to-share-jupyter-notebooks-with-docker-2f19aa2cd87b
# From https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

FROM jupyter/base-notebook
RUN mkdir src
WORKDIR /src
COPY . . 
RUN pip install -r src/requirements.txt
WORKDIR /src/src
