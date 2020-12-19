#!/bin/bash

helm upgrade --install traffic-generator-demo -f traffic-generator/values.yaml --set image.tag=$CIRCLE_SHA1 traffic-generator

