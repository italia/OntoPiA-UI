#!/usr/bin/env bash

set -e

kubectl --kubeconfig=$KUBECONFIG delete configmap virtuoso-ini || true
kubectl --kubeconfig=$KUBECONFIG create configmap virtuoso-ini --from-file=virtuoso.ini

kubectl --kubeconfig=$KUBECONFIG delete -f ontoPIA.${DEPLOY_ENV}.yaml || true
kubectl --kubeconfig=$KUBECONFIG apply -f ontoPIA.${DEPLOY_ENV}.yaml
