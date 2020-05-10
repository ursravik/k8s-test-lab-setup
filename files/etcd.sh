#!/bin/bash
#https://github.com/helm/charts/tree/master/stable/etcd-operator
#helm install stable/etcd-operator --name my-etcd --set deployments.backupOperator=false,deployments.restoreOperator=false
~/example/rbac/create_role.sh
kubectl apply -f ~/example/deployment.yaml
sleep 60
kubectl create -f ~/example/example-etcd-cluster.yaml
