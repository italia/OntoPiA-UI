#!/usr/bin/env bash

set -e

kubectl --kubeconfig=$KUBECONFIG delete configmap virtuoso-ini || true
kubectl --kubeconfig=$KUBECONFIG create configmap virtuoso-ini --from-file=virtuoso.ini
kubectl --kubeconfig=$KUBECONFIG replace -f ontoPIA.${DEPLOY_ENV}.yml --force
