#!/usr/bin/env bash
set -euo pipefail
kubectl delete ns media-stack --ignore-not-found=true
