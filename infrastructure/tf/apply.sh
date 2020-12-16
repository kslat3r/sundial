#!/usr/bin/env bash

source ../bin/authenticate-cluster.sh

terraform init
terraform apply -auto-approve