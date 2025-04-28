# ENV_docker

## 腳本兼容性
以下腳本已在 Ubuntu 24.04 LTS (Noble Numbat) 上測試通過：
- `install_docker.sh`
- `docker-compose_install.sh`
- `docker_install.sh`

## auto install docker 

```bash
# 標準 Docker 安裝 (已在 Ubuntu 24.04 LTS 驗證)
./docker_install.sh

# 或使用簡易安裝 (已在 Ubuntu 24.04 LTS 驗證)
./install_docker.sh
```

## install docker-compose plugin

```bash
# 安裝 docker-compose 插件 (已在 Ubuntu 24.04 LTS 驗證)
./docker-compose_install.sh
```

## auto install nvidia-docker 

```bash
sudo sh basic_nvidia_docker_env.sh
sudo sh auto_install_nvidia_docker.sh
```

## auto remove nvidia-docker 

```bash
sudo auto_remove_nvidia_docker1.sh
```

## auto install nvidia-docker2 

```bash
sudo sh basic_nvidia_docker_env.sh
sudo auto_install_nvidia_docker2.sh
```

## 注意事項
- NVIDIA Docker 相關腳本尚未在 Ubuntu 24.04 LTS 上驗證
- 較新的 Ubuntu 版本推薦優先使用 `docker_install.sh` 進行安裝
- 如需 Docker Compose 功能，推薦使用 `docker-compose_install.sh` 安裝 Docker Compose 插件


