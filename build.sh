#!/usr/bin/env bash
docker build -t fabric8/fabric8-ui:dev .
kubectl delete pod -l project=fabric8
