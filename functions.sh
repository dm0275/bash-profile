#!/usr/bin/env bash

function downloadBinary() {
    URL=$1
    BINARY_NAME=$2

    # Download binary
    curl -L -o /tmp/$BINARY_NAME $URL

    # Add Exec permission
    chmod +x /tmp/$BINARY_NAME

    # Move to bin dir
    sudo mv /tmp/$BINARY_NAME /usr/local/bin/$BINARY_NAME
}

function downloadTarBinary() {
    URL=$1
    BINARY_NAME=$2
    STRIP_COMPONENTS="${STRIP_COMPONENTS:-1}"
    BINARY_TAR=$BINARY_NAME.tar.gz

    # Download binary
    curl -L -o /tmp/$BINARY_TAR $URL

    tar -xf /tmp/$BINARY_TAR -C /tmp --strip-components $STRIP_COMPONENTS

    # Add Exec permission
    chmod +x /tmp/$BINARY_NAME

    # Move to bin dir
    sudo mv /tmp/$BINARY_NAME /usr/local/bin/$BINARY_NAME
}

# Helm Functions
function useHelm2() {
  rm /usr/local/bin/helm
  ln -s /usr/local/bin/helm2 /usr/local/bin/helm
}

function useHelm3() {
  rm /usr/local/bin/helm
  ln -s /usr/local/bin/helm3 /usr/local/bin/helm
}

function encode() {
  echo $1 | base64
}

function decode() {
  echo $1 | base64 -D
}

function idea() {
  open -na "IntelliJ IDEA Ultimate.app" --args "$@"
}

# K8s
function refreshCluster() {
    TODO
}
