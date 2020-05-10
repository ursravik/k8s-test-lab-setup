#!/bin/bash
#Install Prometheus
# ref : https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/
kubectl create namespace monitoring
kubectl create -f ~/kubernetes-prometheus/clusterRole.yaml
kubectl create -f ~/kubernetes-prometheus/config-map.yaml -n monitoring
kubectl create  -f ~/kubernetes-prometheus/prometheus-deployment.yaml --namespace=monitoring
kubectl create  -f ~/kubernetes-prometheus/prometheus-service.yaml --namespace=monitoring
sleep 30
