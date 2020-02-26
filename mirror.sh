#!/bin/bash

oc adm catalog mirror \
   registry.ocp.local/ocp-operators/redhat-operators:v1 \
   registry.ocp.local/openshift
