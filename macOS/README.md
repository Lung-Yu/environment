# macOS 環境設置腳本集

> **作業系統相容性**: 
> - macOS Sequoia (15.x) - **已在 15.4.1 版本 M3 晶片上驗證**
> - macOS Sonoma (14.x) - 可能相容，但未經測試
> 
> **注意**：這些腳本僅在 M3 晶片的 macOS 15.4.1 上經過測試和驗證。早期版本的 macOS（如 Monterey 或 Ventura）未經測試，可能需要調整才能正常運作。

這個目錄包含各種 macOS 環境下的自動化安裝和配置腳本，涵蓋開發環境設置、Docker配置、Minikube 部署以及各種開發工具的安裝。這些腳本適用於 macOS 系統，並針對不同版本進行了優化。

## 目錄結構

```
mac-scripts/
├── docker-sample/         # Docker 範例和範本
├── installer/             # 各種應用程式和工具的安裝腳本
├── delete_none_images.sh  # 刪除未標記的 Docker 映像
├── rebuild_minikube.sh    # 重建 Minikube 環境
└── setup.minikube.sh      # 設置 Minikube 環境
```

## 腳本分類與說明

### 根目錄腳本

| 腳本 | 說明 |
|------|------|
| `delete_none_images.sh` | 清理系統中未標記 (`<none>`) 的 Docker 映像 |
| `rebuild_minikube.sh` | 重建 Minikube Kubernetes 開發環境 |
| `setup.minikube.sh` | 設置並啟動 Minikube 環境，配置所需的資源和插件 |

### Docker 範例 (docker-sample/)

此目錄包含 Docker 配置示例和測試範例，可用於快速部署容器化應用。

| 項目 | 說明 |
|------|------|
| `Dockerfile` | 基礎 Docker 映像配置範例 |
| `test.sh` | Docker 測試腳本 |
| `hello-minikube/` | Minikube 測試應用，包含部署 YAML 檔案和範例應用 |

### 安裝腳本 (installer/)

此目錄包含各種開發工具、程式語言環境和應用程式的安裝腳本。

| 腳本 | 說明 |
|------|------|
| `bloomrpc-install.sh` | 安裝 BloomRPC (gRPC 測試工具) |
| `brew.sh` | 安裝 Homebrew 包管理器及常用軟體包 |
| `codeScanToolContrast.sh` | 安裝代碼掃描與安全檢測工具 |
| `config_dotnet_sdk.sh` | 配置 .NET SDK 環境 |
| `docker.sh` | 安裝 Docker 桌面版 |
| `dotnet-install.sh` | 安裝 .NET SDK 和運行時 |
| `ffmpeg.sh` | 安裝 FFmpeg 媒體處理工具 |
| `fishshell-installer.sh` | 安裝 Fish Shell 及插件 |
| `gitflow.sh` | 安裝 Git-flow 工作流程工具 |
| `java-install.sh` | 安裝 Java JDK |
| `java-install_21.sh` | 安裝 Java 21 版本 |
| `minikube_installer.sh` | 安裝 Minikube 及相關依賴 |
| `npm.sh` | 安裝 Node.js 和 npm 包管理器 |
| `php-install.sh` | 安裝 PHP 和相關擴展 |
| `postman-install.sh` | 安裝 Postman API 測試工具 |
| `puml-install.sh` | 安裝 PlantUML 繪圖工具 |
| `security-tool.sh` | 安裝各種安全測試工具 |
| `upgrad_socket_vmnet.sh` | 升級 socket_vmnet 虛擬網絡工具 |
| `vscode.sh` | 安裝 Visual Studio Code 編輯器 |
| `vscode-insider.sh` | 安裝 Visual Studio Code Insiders 版本 |
| `wireshark.sh` | 安裝 Wireshark 網絡分析工具 |

## 使用方法

大多數腳本可通過以下方式執行：

```bash
# 賦予執行權限
chmod +x 腳本路徑.sh

# 執行腳本
./腳本路徑.sh
```

## Minikube 相關腳本使用

設置 Minikube 環境：

```bash
# 設置並啟動 Minikube 環境
./setup.minikube.sh

# 如需重建環境
./rebuild_minikube.sh
```

## 注意事項

1. 這些腳本僅在 macOS Sequoia (15.4.1) M3 晶片上進行過測試
2. 部分腳本可能需要管理員權限，系統會提示輸入密碼
3. Minikube 相關腳本需要預先安裝 QEMU 和 socket_vmnet
4. 安裝腳本可能會下載大量資料，建議在穩定的網絡環境中執行
5. 腳本可能需要根據 Apple Silicon 架構進行特定優化

## 維護

這些腳本會根據 macOS 系統和軟體更新進行調整。如遇到問題，請檢查官方文檔獲取最新的安裝指南和相容性信息。