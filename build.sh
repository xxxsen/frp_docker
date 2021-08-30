#!/bin/bash

TAGS=v0.37.1

docker build --build-arg TAGS=${TAGS} -t xxxsen/frp:${TAGS} .
