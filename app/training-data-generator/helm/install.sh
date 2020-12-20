#!/bin/bash

helm upgrade --install training-data-generator \
  -f training-data-generator/values.yaml \
  --set image.tag=$CIRCLE_SHA1 \
  --set step=1s \
  --set dataFile=1straining.csv \
  1s-training-data-generator

helm upgrade --install training-data-generator \
  -f training-data-generator/values.yaml \
  --set image.tag=$CIRCLE_SHA1 \
  --set step=30s \
  --set dataFile=30straining.csv \
  30s-training-data-generator
