#!/usr/bin/env bash

source ../bin/authenticate-cluster.sh

istioctl install -y

kubectl apply -f kiali.yml
kubectl apply -f grafana.yml
kubectl apply -f prometheus.yml