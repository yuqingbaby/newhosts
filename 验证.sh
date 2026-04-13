#!/bin/sh

# 执行 ping 并取第一行
result=$(ping -c 1 www.baidu.com 2>/dev/null | head -n 1)

# 判断是否包含 127.0.0.1
echo "$result" | grep -q "127.0.0.1"

if [ $? -eq 0 ]; then
    # 绿色 成功
    echo -e "\033[32m[验证成功]\033[0m"
else
    # 红色 失败
    echo -e "\033[31m[验证失败]\033[0m"
fi