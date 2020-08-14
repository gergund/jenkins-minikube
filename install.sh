#!/bin/bash

kubectl apply -f jenkins-namespace.yml
kubectl apply -f jenkins-volume.yml
helm install --namespace jenkins --values values.yml jenkins stable/jenkins
minikube --namespace=jenkins service jenkins
