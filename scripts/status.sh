#!/usr/bin/env bash
set -euo pipefail
kubectl -n media-stack get pods -o wide
kubectl -n media-stack get svc
kubectl -n media-stack get ingress
