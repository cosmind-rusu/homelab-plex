#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/00-namespace.yaml
kubectl apply -f manifests/01-pvc-config.yaml

kubectl apply -f manifests/10-qbittorrent.yaml
kubectl apply -f manifests/20-prowlarr.yaml
kubectl apply -f manifests/30-radarr.yaml
kubectl apply -f manifests/40-sonarr.yaml
kubectl apply -f manifests/50-overseerr.yaml

kubectl apply -f manifests/90-ingress-nipio.yaml

echo ""
echo "✅ Applied. Status:"
kubectl -n media-stack get pods,svc,ingress
