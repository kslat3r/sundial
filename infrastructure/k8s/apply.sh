#!/usr/bin/env bash

source ../bin/authenticate-cluster.sh

kubectl create ns api || true
kubectl create ns monitoring-system || true
kubectl create ns sundial-system || true

kubectl apply -f metrics-server.yaml

kubectl apply -f kiali.yml
kubectl apply -f grafana.yml
kubectl apply -f prometheus.yml