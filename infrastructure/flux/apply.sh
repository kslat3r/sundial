#!/usr/bin/env bash

GHUSER="kslat3r"

kubectl create ns flux-system

fluxctl install \
    --git-user=${GHUSER} \
    --git-email=${GHUSER}@users.noreply.github.com \
    --git-url=git@github.com:${GHUSER}/sundial \
    --git-path=manifest \
    --namespace=flux-system | kubectl apply -f -

kubectl -n flux-system rollout status deployment/flux

fluxctl identity --k8s-fwd-ns flux-system
