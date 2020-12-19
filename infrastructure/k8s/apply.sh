#!/usr/bin/env bash

source ../bin/authenticate-cluster.sh

kubectl create ns api || true
kubectl create ns istio-system || true
kubectl create ns sundial-system || true

kubectl apply -f metrics-server.yml