# From https://betterprogramming.pub/how-to-share-jupyter-notebooks-with-docker-2f19aa2cd87b
# From https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
# From https://docs.docker.com/config/containers/multi-service_container/


FROM ubuntu:latest
RUN apt-get update && apt-get -y update
FROM jupyter/base-notebook
RUN mkdir src
WORKDIR /src
COPY . . 
RUN pip install -r src/requirements.txt
WORKDIR /src/src


# FROM ubuntu:latest
# COPY my_first_process my_first_process
# COPY my_second_process my_second_process
# COPY my_wrapper_script.sh my_wrapper_script.sh
 CMD /src/src/wrapper.sh