#!/usr/bin/env bash

pushd tf
source ./apply.sh
popd

pushd k8s
source ./apply.sh
popd

echo "Done"
