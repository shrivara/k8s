#!/bin/bash
set -eo pipefail
BASE_DIR=$(dirname "$0")

kubectl apply -R -f "${BASE_DIR}/../vendor/heptio-contour"
kubectl apply -R -f "${BASE_DIR}/../vendor/cert-manager"
kubectl apply -R -f "${BASE_DIR}/../cluster-issuer"
kubectl apply -R -f "${BASE_DIR}/../shrivara-dev"
