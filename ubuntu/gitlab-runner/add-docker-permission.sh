#!/bin/bash
# This script adds the current user and gitlab-runner to the docker group
# Verified in Ubuntu 24.04 LTS

sudo usermod -aG docker ${USER}

sudo usermod -aG docker gitlab-runner
