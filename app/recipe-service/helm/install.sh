#!/bin/bash

helm upgrade --install breakfast-service -f breakfast-service/values.yaml --set image.tag=$CIRCLE_SHA1 recipe-service
helm upgrade --install lunch-service -f lunch-service/values.yaml --set image.tag=$CIRCLE_SHA1 recipe-service
helm upgrade --install dinner-service -f dinner-servicevalues.yaml --set image.tag=$CIRCLE_SHA1 recipe-service

