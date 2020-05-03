#!/bin/sh
set -eo pipefail
BASE_DIR=$(dirname "$0")

# versions
HEPTIO_CONTOUR_VERSION=v0.9.0
CERT_MANAGER_VERSION=v0.14.3

# vendor
rm -rf "${BASE_DIR}/../vendor"

# heptio-contour
mkdir -p "${BASE_DIR}/../vendor/heptio-contour"
curl \
  -s \
  "https://raw.githubusercontent.com/heptio/contour/${HEPTIO_CONTOUR_VERSION}/deployment/render/deployment-rbac.yaml" \
  -o "${BASE_DIR}/../vendor/heptio-contour/manifests.yaml"

# cert-manager
mkdir -p "${BASE_DIR}/../vendor/cert-manager"
curl \
  -L \
  -s \
  "https://github.com/jetstack/cert-manager/releases/download/${CERT_MANAGER_VERSION}/cert-manager-legacy.yaml" \
  -o "${BASE_DIR}/../vendor/cert-manager/manifests.yaml"
