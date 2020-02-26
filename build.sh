#!/bin/bash

oc adm catalog build \
  --appregistry-endpoint https://quay.io/cnr \
  --appregistry-org redhat-operators \
  --to=registry.ocp.local/ocp-operators/redhat-operators:v1
