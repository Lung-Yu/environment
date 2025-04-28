#!/bin/bash

# 獲取所有標記為 <none> 的映像 ID
none_images=$(docker images | awk '$1 == "<none>" && $2 == "<none>" {print $3}')

# 如果存在 <none> 映像，則刪除它們
if [ -n "$none_images" ]; then
    echo "正在刪除以下 <none> 映像："
    echo "$none_images"
    echo "$none_images" | xargs docker rmi
    echo "刪除完成。"
else
    echo "沒有找到 <none> 映像。"
fi

