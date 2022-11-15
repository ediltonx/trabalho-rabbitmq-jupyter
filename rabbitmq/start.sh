#!/bin/bash
rabbitmq-server -detached
jupyter-lab --ip=* --port=8888 --no-browser  --allow-root --NotebookApp.token='' --NotebookApp.password=''



