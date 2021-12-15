# Fred Straub 2021
# https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/
# https://snyk.io/blog/best-practices-containerizing-python-docker/

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

# the starting point of the docker container
WORKDIR /src

CMD [ "python3", "src/app.py" ]