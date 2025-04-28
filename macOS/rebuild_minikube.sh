#!/bin/bash

minikube stop
minikube delete

minikube start --driver=qemu2 --network=socket_vmnet
#minikube start --driver=docker --network=socket_vmnet

