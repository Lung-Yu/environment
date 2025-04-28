# Ubuntu 環境設置腳本集

> **作業系統相容性**: 
> - Ubuntu 16.04 LTS (Xenial Xerus)
> - Ubuntu 18.04 LTS (Bionic Beaver)
> - Ubuntu 20.04 LTS (Focal Fossa)
> 
> **硬體相容性**:
> - 主要在 Intel x86_64 架構處理器上測試
> - 部分 NVIDIA GPU 相關腳本需要特定型號的 NVIDIA 顯卡
> 
> 這些腳本大多於2016-2020年間開發，部分腳本可能不相容於較新的 Ubuntu 22.04 LTS (Jammy Jellyfish) 或 24.04 LTS (Noble Numbat) 版本，也未在 ARM 架構處理器上測試過。

這個目錄包含各種 Ubuntu 環境下的自動化安裝腳本，涵蓋開發環境設置、驅動安裝、Docker配置、深度學習框架和其他實用工具。這些腳本大多於2016-2020年間開發，並針對Ubuntu 16.04 ~ 20.04版本進行過測試。

## 目錄結構

```
ubuntu/
├── auto/                  # 自動化工具腳本
├── configuration/         # 系統配置腳本
├── deep_learning/         # 深度學習環境設置
├── developer/             # 開發工具安裝腳本
├── docker/                # Docker相關安裝配置
├── drivers/               # 驅動程式安裝腳本
├── reverse/               # 逆向工程工具
└── service/               # 服務安裝腳本
```

## 腳本分類與版本資訊

### 自動化工具 (auto/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_pyautogui.sh` | 2018-06 | Ubuntu 16.04 ~ 18.04 | 安裝PyAutoGUI自動化測試工具 |
| `pyautogui_sample.py` | 2018-06 | Python 3.x | PyAutoGUI使用範例 |

### 系統配置 (configuration/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `language.sh` | 2017-03 | Ubuntu 16.04 ~ 20.04 | 設定系統語言與鍵盤配置 |
| `spotify.sh` | 2019-01 | Ubuntu 18.04 ~ 20.04 | 安裝Spotify音樂播放器 |

### 深度學習環境 (deep_learning/)

#### TensorFlow 相關

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_tensorflow.sh` | 2017-08 | Ubuntu 16.04, Python 3.5 | 安裝TensorFlow 1.x CPU版本 |
| `config_cudnn_5.1.sh` | 2017-05 | Ubuntu 16.04, CUDA 8.0 | 配置cuDNN 5.1環境 |
| `install_cuda_in_cmd.sh` | 2017-05 | Ubuntu 16.04 | 命令行安裝CUDA 8.0 |
| `install_NvidiaToolkit8.sh` | 2017-05 | Ubuntu 16.04 | 安裝NVIDIA Toolkit 8.0 |
| `step1_install_nvidia_tookit_9.0.sh` | 2018-02 | Ubuntu 16.04 ~ 18.04 | 安裝NVIDIA Toolkit 9.0 |
| `tensorflow_gpu_env.sh` | 2018-03 | Ubuntu 16.04 ~ 18.04 | 配置TensorFlow GPU環境變數 |
| `test_tensorflow.sh` | 2017-08 | Ubuntu 16.04 ~ 18.04 | 測試TensorFlow安裝 |

#### Theano 相關

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_anaconda.sh` | 2017-05 | Ubuntu 16.04 ~ 18.04 | 安裝Anaconda科學計算環境 |
| `install_pygpu.sh` | 2017-06 | Ubuntu 16.04, Python 3.5 | 安裝PyGPU庫 |
| `install_recommended.sh` | 2017-05 | Ubuntu 16.04 | 安裝Theano推薦依賴 |
| `install_theano_with_conda.sh` | 2017-05 | Ubuntu 16.04, Anaconda | 使用Conda安裝Theano |
| `install.sh` | 2017-05 | Ubuntu 16.04 | 安裝Theano主程式 |
| `test_theano.py` | 2017-05 | Python 3.5 | 測試Theano安裝 |

### 開發工具 (developer/)

#### Android 開發

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_android_studio.sh` | 2017-09 | Ubuntu 16.04 ~ 18.04 | 安裝Android Studio開發工具 |

#### 機器學習工具

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `nvidia_cuda_installer.sh` | 2018-06 | Ubuntu 16.04 ~ 18.04 | 安裝NVIDIA CUDA工具包 |
| `pytorch_installer.sh` | 2018-12 | Ubuntu 18.04, Python 3.6 | 安裝PyTorch深度學習框架 |
| `tensorflow_installer.sh` | 2018-12 | Ubuntu 18.04, Python 3.6 | 安裝TensorFlow 1.12 |

#### Node.js 開發

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `auto_installer.sh` | 2017-04 | Ubuntu 16.04 ~ 20.04 | 自動安裝Node.js最新LTS版本 |

#### OpenCV 影像處理

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_opencv_3.2.0.sh` | 2017-07 | Ubuntu 16.04 | 安裝OpenCV 3.2.0 |
| `install_opencv.sh` | 2019-03 | Ubuntu 18.04 | 安裝最新版OpenCV |

#### Python 工具

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_ipython.sh` | 2016-11 | Ubuntu 16.04, Python 3.5 | 安裝IPython互動式開發環境 |

#### R 語言

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_R_Rstudio.sh` | 2017-10 | Ubuntu 16.04 ~ 18.04 | 安裝R語言和RStudio開發環境 |

#### 安全工具

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `gdb_penda.sh` | 2016-12 | Ubuntu 16.04 | 安裝GDB-PEDA除錯增強工具 |
| `pwntools_installer.sh` | 2016-12 | Ubuntu 16.04, Python 2.7 | 安裝PWNTools漏洞利用工具 |

#### Vim 配置

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_vundle.sh` | 2016-10 | Ubuntu 16.04 ~ 20.04 | 安裝Vim套件管理器Vundle |

### Docker 安裝配置 (docker/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `auto_install_docker.sh` | 2017-03 | Ubuntu 16.04 ~ 20.04 | 自動安裝最新Docker CE版本 |
| `auto_install_nvidia_docker.sh` | 2017-08 | Ubuntu 16.04 | 安裝NVIDIA Docker 1.0 |
| `auto_install_nvidia_docker2.sh` | 2018-01 | Ubuntu 16.04 ~ 18.04 | 安裝NVIDIA Docker 2.0 |
| `auto_remove_nvidia_docker1.sh` | 2018-01 | Ubuntu 16.04 | 移除NVIDIA Docker 1.0 |
| `basic_nvidia_docker_env.sh` | 2018-01 | Ubuntu 16.04 ~ 18.04 | 設置基本NVIDIA Docker環境 |
| `install_docker.sh` | 2016-11 | Ubuntu 16.04 | 安裝Docker早期版本 |

### 驅動程式 (drivers/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_GTX1080Ti_Drivers.sh` | 2017-08 | Ubuntu 16.04 | 安裝NVIDIA GTX 1080Ti顯卡驅動 |

### 逆向工程工具 (reverse/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `gdb_peda_installer.sh` | 2016-12 | Ubuntu 16.04 | 安裝GDB-PEDA除錯增強工具 |
| `install_gdb_peda.sh` | 2016-12 | Ubuntu 16.04 | 安裝並配置GDB-PEDA |

### 服務安裝 (service/)

| 腳本 | 建立時間 | 相容版本 | 說明 |
|------|--------|---------|------|
| `install_rdp.sh` | 2017-04 | Ubuntu 16.04 ~ 18.04 | 安裝遠端桌面服務 |
| `tesseract_ocr.sh` | 2018-11 | Ubuntu 18.04 | 安裝Tesseract OCR文字辨識系統 |

## 使用方法

大多數腳本可通過以下方式執行：

```bash
# 賦予執行權限
chmod +x 腳本路徑.sh

# 執行腳本
./腳本路徑.sh
```

## 注意事項

1. 這些腳本大多開發於2016-2020年間，部分較舊的腳本可能需要針對最新的Ubuntu版本進行調整
2. 在執行驅動安裝或系統配置腳本前，建議先進行系統備份
3. 深度學習環境腳本通常需要較高的硬體配置，特別是搭配NVIDIA GPU的環境
4. 執行前請先閱讀腳本內部的註釋以了解詳細的安裝步驟和需求

## 維護

這些腳本僅作為參考和歷史記錄。新版本的Ubuntu可能需要更新的安裝方法，請參考各軟體的官方文檔獲取最新的安裝指南。