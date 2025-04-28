#!/bin/bash

# 定義顏色輸出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 定義資源配置
MEMORY="8192" # 8GB 記憶體
CPUS="4"      # 4核心 CPU

echo -e "${YELLOW}開始設定 minikube...${NC}"

# 步驟1: 確保系統環境
echo -e "${GREEN}[步驟 1/7] 檢查並啟動必要服務${NC}"
# 檢查並啟動 socket_vmnet
if ! brew services list | grep socket_vmnet | grep started > /dev/null; then
    echo "啟動 socket_vmnet 服務..."
    sudo brew services start socket_vmnet
    sleep 5
fi

# 步驟2: 載入 vmnet framework
echo -e "${GREEN}[步驟 2/7] 載入 vmnet framework${NC}"
sudo launchctl load -w /Library/LaunchDaemons/com.apple.vmnet.plist 2>/dev/null || true

# 步驟3: 停止現有的 minikube
echo -e "${GREEN}[步驟 3/7] 停止現有的 minikube 實例${NC}"
minikube stop

# 步驟4: 刪除現有的 minikube 集群
echo -e "${GREEN}[步驟 4/7] 刪除現有的 minikube 集群${NC}"
minikube delete

# 步驟5: 啟動新的 minikube 集群
echo -e "${GREEN}[步驟 5/7] 啟動新的 minikube 集群${NC}"
minikube start --driver=qemu2 \
    --network=socket_vmnet \
    --memory=${MEMORY} \
    --cpus=${CPUS}

# 檢查啟動是否成功
if [ $? -ne 0 ]; then
    echo -e "${RED}Minikube 啟動失敗！${NC}"
    exit 1
fi

# 步驟6: 啟用必要的 addons
echo -e "${GREEN}[步驟 6/7] 啟用必要的 addons${NC}"
minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable ingress

# 步驟7: 驗證設置
echo -e "${GREEN}[步驟 7/7] 驗證設置${NC}"
echo "檢查 minikube 狀態..."
minikube status

echo "檢查節點資源配置..."
kubectl get nodes -o=custom-columns=NAME:.metadata.name,CPU:.status.capacity.cpu,MEMORY:.status.capacity.memory

echo -e "${GREEN}完成! Minikube 已成功設置並運行${NC}"
echo "您可以使用以下指令來訪問 Kubernetes 儀表板："
echo "minikube dashboard"

# 顯示 minikube IP
echo -e "${YELLOW}Minikube IP 位址：${NC}"
minikube ip

