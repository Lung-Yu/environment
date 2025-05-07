#!/bin/bash

ps aux | grep -i 'chrome\|chromium' | grep 'playwright' | awk '{print $2}' | xargs kill -9

