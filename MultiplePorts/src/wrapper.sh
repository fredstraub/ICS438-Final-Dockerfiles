#!/bin/bash

# Start the first process
jupyter notebook
  
# Start the second process
python3 app.py
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?