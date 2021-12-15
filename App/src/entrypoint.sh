#!/bin/bash

# start jupyter with tini
/usr/bin/tini -- jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --allow-root &

# start python app.py in the background
python3 app.py
