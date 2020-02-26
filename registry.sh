#!/bin/bash

podman run --name mirror-registry -p 443:5000 \
     -v /opt/registry/data:/var/lib/registry:z \
     -v /opt/registry/certs:/certs:z \
     -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
     -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
     -d docker.io/library/registry:2
