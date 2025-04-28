#!/bin/bash

# 確保 Minikube 正在運行
minikube status || minikube start --driver=qemu2 --network=socket_vmnet

# 設置 Docker 環境
eval $(minikube docker-env)

# 構建並加載鏡像
docker build -t hello-minikube:v2 .
minikube image load hello-minikube:v2

# 顯示 Minikube 中的鏡像列表
minikube image list

# 應用 Kubernetes 配置
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# 刪除舊的 pod，讓 Kubernetes 創建新的
kubectl delete pod -l app=hello-minikube

# 等待並顯示 pod 狀態
kubectl get pods -w

# 獲取服務 URL 並測試連接
SERVICE_URL=$(minikube service hello-minikube --url)
echo "Service URL: $SERVICE_URL"
curl $SERVICE_URL
