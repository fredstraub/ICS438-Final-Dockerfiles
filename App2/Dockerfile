# Fred Straub 2021
# https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/
FROM python:3.6-slim

# Install pip libraries first so docker caches the results;
# subsequent `docker build` runs will use the cache unless a
# library is updated.
COPY src/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install jupyter

# Open ports on container
EXPOSE 8888
EXPOSE 8050

# Copy the rest of src to working dir
COPY src /src
WORKDIR /src

# from https://github.com/jupyter/docker-stacks
# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
