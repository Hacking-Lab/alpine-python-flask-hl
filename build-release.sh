#!/bin/bash
docker build --no-cache -t hackinglab/alpine-python-flask-hl:$1.0 -t hackinglab/alpine-python-flask-hl:$1 -t hackinglab/alpine-python-flask-hl:latest -f Dockerfile .

docker push hackinglab/alpine-python-flask-hl
docker push hackinglab/alpine-python-flask-hl:$1
docker push hackinglab/alpine-python-flask-hl:$1.0


