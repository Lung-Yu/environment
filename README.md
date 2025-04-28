# 環境設置工具集

這個專案提供了一系列自動化腳本，用於快速設置和配置各種開發環境、安裝工具和實用程式。涵蓋macOS和Ubuntu系統，適用於新機器的初始配置、專案環境標準化、開發工具安裝等多種場景。

## 專案結構

```
.
├── README.md               # 專案說明文件
├── mac-scripts/            # macOS 相關腳本
│   ├── delete_none_images.sh     # 刪除無標籤的 Docker 映像
│   ├── rebuild_minikube.sh       # 重建 Minikube 環境
│   ├── setup.minikube.sh         # 設置 Minikube 環境 
│   ├── docker-sample/            # Docker 範例
│   └── installer/                # 各種macOS安裝腳本
├── pictures/               # 圖片資源
├── scripts/                # 通用腳本
│   ├── rename_all_by_md5.py      # 根據 MD5 重命名檔案
│   └── unzip_all.py              # 批量解壓縮檔案
└── ubuntu/                 # Ubuntu 相關腳本
    ├── auto/                     # 自動化腳本
    ├── configuration/            # 系統配置腳本
    ├── deep_learning/            # 深度學習環境設置
    ├── developer/                # 開發工具安裝腳本
    ├── docker/                   # Docker相關安裝配置
    ├── drivers/                  # 驅動程式安裝腳本
    ├── reverse/                  # 逆向工程工具
    └── service/                  # 服務安裝腳本
```

## 腳本分類

### macOS 安裝腳本 (mac-scripts/installer/)

| 腳本 | 描述 |
|------|------|
| `brew.sh` | 安裝 Homebrew 套件管理器 |
| `docker.sh` | 安裝 Docker 環境 |
| `dotnet-install.sh` | 安裝 .NET SDK |
| `config_dotnet_sdk.sh` | 配置 .NET SDK 環境 |
| `ffmpeg.sh` | 安裝 FFmpeg 媒體處理工具 |
| `fishshell-installer.sh` | 安裝 Fish shell |
| `gitflow.sh` | 安裝 Git Flow 工作流工具 |
| `java-install.sh` | 安裝 Java JDK 17 和 Maven |
| `java-install_21.sh` | 安裝 Java JDK 21 和 Maven |
| `minikube_installer.sh` | 安裝 Minikube 和相關依賴 |
| `npm.sh` | 安裝 Node.js 和 npm |
| `php-install.sh` | 安裝 PHP 和 Composer |
| `postman-install.sh` | 安裝 Postman API 測試工具 |
| `puml-install.sh` | 安裝 PlantUML 和 Graphviz |
| `security-tool.sh` | 安裝安全測試工具 |
| `vscode.sh` | 安裝 VS Code 編輯器 |
| `vscode-insider.sh` | 安裝 VS Code Insider 版本 |
| `wireshark.sh` | 安裝 Wireshark 網路分析工具 |
| `bloomrpc-install.sh` | 安裝 BloomRPC (gRPC 工具) |
| `codeScanToolContrast.sh` | 安裝 Contrast Security 代碼掃描工具 |
| `upgrad_socket_vmnet.sh` | 升級 socket_vmnet 工具 |

### Ubuntu 開發環境腳本

#### 深度學習 (ubuntu/deep_learning/)
| 腳本 | 描述 |
|------|------|
| `tensorflow/install_tensorflow.sh` | 安裝 TensorFlow |
| `tensorflow/config_cudnn_5.1.sh` | 配置 cuDNN 5.1 |
| `tensorflow/install_cuda_in_cmd.sh` | 命令行安裝 CUDA |
| `tensorflow/install_NvidiaToolkit8.sh` | 安裝 NVIDIA Toolkit 8 |
| `theano/install_anaconda.sh` | 安裝 Anaconda |
| `theano/install_theano_with_conda.sh` | 使用 Conda 安裝 Theano |
| `theano/install_pygpu.sh` | 安裝 PyGPU |

#### 開發工具 (ubuntu/developer/)
| 腳本 | 描述 |
|------|------|
| `android/install_android_studio.sh` | 安裝 Android Studio |
| `ML/nvidia_cuda_installer.sh` | 安裝 NVIDIA CUDA |
| `ML/pytorch_installer.sh` | 安裝 PyTorch |
| `ML/tensorflow_installer.sh` | 安裝 TensorFlow |
| `nodejs/auto_installer.sh` | 自動安裝 Node.js |
| `opencv/install_opencv.sh` | 安裝 OpenCV |
| `python/install_ipython.sh` | 安裝 IPython |
| `R/install_R_Rstudio.sh` | 安裝 R 和 RStudio |
| `security/pwntools_installer.sh` | 安裝 Pwntools |
| `vim/install_vundle.sh` | 安裝 Vim 套件管理器 Vundle |

#### Docker相關 (ubuntu/docker/)
| 腳本 | 描述 |
|------|------|
| `auto_install_docker.sh` | 自動安裝 Docker |
| `auto_install_nvidia_docker.sh` | 安裝 NVIDIA Docker |
| `auto_install_nvidia_docker2.sh` | 安裝 NVIDIA Docker 2 |
| `auto_remove_nvidia_docker1.sh` | 移除 NVIDIA Docker 1 |
| `basic_nvidia_docker_env.sh` | 設置基本 NVIDIA Docker 環境 |

### Kubernetes/Docker 相關腳本 (mac-scripts/)

| 腳本 | 描述 |
|------|------|
| `setup.minikube.sh` | 完整設置 Minikube 環境 |
| `rebuild_minikube.sh` | 快速重建 Minikube 集群 |
| `delete_none_images.sh` | 清理無標籤的 Docker 映像 |
| `docker-sample/` | Docker 範例專案和 Kubernetes 資源定義 |

### 實用工具腳本 (scripts/)

| 腳本 | 描述 |
|------|------|
| `rename_all_by_md5.py` | 將目錄中的檔案按 MD5 雜湊值重命名 |
| `unzip_all.py` | 批量解壓縮檔案到指定目錄 |

## 使用方法

### macOS 開發環境設置

```bash
# 安裝 Homebrew
chmod +x mac-scripts/installer/brew.sh
./mac-scripts/installer/brew.sh

# 安裝 Docker
chmod +x mac-scripts/installer/docker.sh
./mac-scripts/installer/docker.sh

# 安裝開發語言環境 (以Java為例)
chmod +x mac-scripts/installer/java-install.sh
./mac-scripts/installer/java-install.sh
```

### Ubuntu 開發環境設置

```bash
# 安裝 Docker
chmod +x ubuntu/docker/auto_install_docker.sh
./ubuntu/docker/auto_install_docker.sh

# 設置深度學習環境
chmod +x ubuntu/deep_learning/tensorflow/install_tensorflow.sh
./ubuntu/deep_learning/tensorflow/install_tensorflow.sh

# 安裝 Android 開發環境
chmod +x ubuntu/developer/android/install_android_studio.sh
./ubuntu/developer/android/install_android_studio.sh
```

### 設置 Minikube 環境

```bash
# 安裝 Minikube
chmod +x mac-scripts/installer/minikube_installer.sh
./mac-scripts/installer/minikube_installer.sh

# 完整設置 Minikube 環境
chmod +x mac-scripts/setup.minikube.sh
./mac-scripts/setup.minikube.sh

# 快速重建 Minikube
chmod +x mac-scripts/rebuild_minikube.sh
./mac-scripts/rebuild_minikube.sh
```

### 使用 Docker 範例

```bash
# 部署 Hello Minikube 範例
cd mac-scripts/docker-sample/hello-minikube
chmod +x publish.sh
./publish.sh
```

### 檔案處理工具

```bash
# 重命名檔案
python scripts/rename_all_by_md5.py /路徑/到/檔案目錄

# 批量解壓縮
python scripts/unzip_all.py /路徑/到/壓縮檔目錄 密碼 /輸出目錄
```

## 系統需求

- macOS 或 Ubuntu 系統
- Python 3.x (用於 Python 腳本)
- Bash shell
- 系統管理員權限 (某些安裝需要)

## 注意事項

- 在執行任何腳本前，請確保理解腳本的功能和可能的影響
- 某些腳本可能需要管理員權限
- 使用前建議備份重要數據

## 貢獻

歡迎提交問題報告或改進建議。如果您有新的腳本或改進，請提交 Pull Request。