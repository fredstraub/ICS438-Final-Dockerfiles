# Fred Straub 2021
# https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/


# Linux base with updates
FROM ubuntu:latest
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade

#made working dir, and copied contents into it
RUN mkdir src
WORKDIR /src
COPY . .

#install libraries
RUN pip3 install -r src/requirements.txt
RUN pip3 install jupyter
#RUN python3 app.py

# run the app
RUN # [ "executable" ] [ "/bin/bash", "python3 app.py"]

# the starting point of the docker container
WORKDIR /src/src

#from https://github.com/jupyter/docker-stacks
# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# starts jupyter notebool
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]