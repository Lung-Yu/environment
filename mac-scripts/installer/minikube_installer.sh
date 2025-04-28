#!/bin/bash
brew uninstall minikube

echo "步驟 1：安裝套件"
brew install qemu
brew install socket_vmnet
brew install minikube

echo "步驟 2：啟動 socket_vmnet 服務"
sudo brew services start socket_vmnet

echo "步驟 3：啟動 minikube"
minikube start --driver=qemu2 --network=socket_vmnet

echo "安裝完成。請檢查上方輸出是否有任何錯誤。"

