#!/bin/bash

helm upgrade --install training-data-generator -f training-data-generator/values.yaml --set image.tag=$CIRCLE_SHA1 training-data-generator

