#!/bin/bash
docker build --no-cache -t hackinglab/alpine-python-flask:$1.0 -t hackinglab/alpine-python-flask:$1 -t hackinglab/alpine-python-flask:latest -f Dockerfile .

docker push hackinglab/alpine-python-flask
docker push hackinglab/alpine-python-flask:$1
docker push hackinglab/alpine-python-flask:$1.0


