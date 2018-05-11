#!/bin/bash

docker build -t 10.98.74.120:5000/virtuoso:1.0.0-SNAPSHOT ./virtuoso
docker push 10.98.74.120:5000/virtuoso:1.0.0-SNAPSHOT

docker build -t 10.98.74.120:5000/lode:1.0.0-SNAPSHOT ./lode
docker push 10.98.74.120:5000/lode:1.0.0-SNAPSHOT

docker build -t 10.98.74.120:5000/lodview:1.0.0-SNAPSHOT ./lodview
docker push 10.98.74.120:5000/lodview:1.0.0-SNAPSHOT
