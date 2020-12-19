#!/bin/bash

helm upgrade --install traffic-generator -f traffic-generator/values.yaml --set image.tag=$CIRCLE_SHA1 traffic-generator

