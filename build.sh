#!/bin/bash
docker build --no-cache -t hackinglab/alpine-python-flask-hl:3.2.0 -t hackinglab/alpine-python-flask-hl:3.2 -t hackinglab/alpine-python-flask-hl:latest -f Dockerfile .

